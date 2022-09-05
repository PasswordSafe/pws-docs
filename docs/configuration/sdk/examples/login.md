---
hide:
    - toc
---

# Login

=== "JavaScript"

    ``` javascript
    (async function() {

    const { PsrApi, PsrApiEnums } = require('./src/psrApi')
    const { PsrContainerType, PsrContainerItemType } = PsrApiEnums

    // After login you can use all functions of the API.
    // Insert your access data in the places marked with #.
    const psrApi = new PsrApi('#')
    await psrApi.authenticationManager.login('#', '#', '#')

    // Passwords are in the context of the API container.
    // The ContainerManager is necessary for handling.
    const conMan = psrApi.containerManager

    // To be able to filter for specific passwords, you need a filter 
    // of type PsrListFilterGroupContent. 
    // To do this, you need to retrieve the default filter for passwords.
    const passwordListFilter = await conMan.getContainerListFilter(
        PsrContainerType.Password, true)

    // In a second step you can search the default filter for a filter 
    // object of type PsrListFilterGroupContent.
    const contentFilter = passwordListFilter.FilterGroups
        .find(fg => 'SearchList' in fg).SearchList[0]

    if (contentFilter) {
        // Replace the # digit with your search term.
        // In addition, the filter must be marked as Active.
        contentFilter.Search = '#'
        contentFilter.FilterActive = true
    }

    // Now your searched passwords can be retrieved 
    // using the previously configured filter.
    const passwords = await conMan.getContainerList(
        PsrContainerType.Password, passwordListFilter)

    const passwordContainer = passwords[0]
    if (passwordContainer) {
        // To make your searched password visible in plain text, 
        // you need to search for the first password field 
        // in the list of ContainerItems in your password.
        const passwordItem = passwordContainer.Items
        .find(i => i.ContainerItemType === PsrContainerItemType.ContainerItemPassword)

        // The found ContainerItem can then be decrypted.
        const decryptedPasswordString = await conMan.decryptContainerItem(passwordItem)

        // After that you can use the password in plain text.
        console.log('Your password is: ', decryptedPasswordString)
    }

    // Don't forget logout after completed work to prevent dead sessions
    await psrApi.authenticationManager.logout()

    })()
    ```

=== "C#"

    ``` c#
    private static async Task Login()
    {
        // Accept invalid certificates - until .NET Framework 4.6
        // When using .NET Framework 4.7 or higher, you need to
        // create an own HttpClientHandler and set the callback there
        ServicePointManager.ServerCertificateValidationCallback += (sender, cert, chain, sslPolicyErrors) => true;

        Console.Write("Enter your endpoint IP's to proceed (xxx.xxx.xxx.xxx): ");
        var endpointIp = Console.ReadLine();

        var psrApi = new PsrApi($":11016");

        Console.WriteLine($"Available databases: {string.Join(", ", await psrApi.GetActiveDatabaseNames())}");

        Console.Write("Database: ");
        var database = Console.ReadLine();

        Console.Write("Username: ");
        var username = Console.ReadLine();

        Console.Write("Password: ");
        var password = ReadPassword();
        var mfaRequest = await psrApi.AuthenticationManager.Login(database, username, password);

        if (mfaRequest != null)
        {
            await PerformMultiFactorAuth(mfaRequest, psrApi, database, username, password);
        }

        psrApi.ServerStatusChanged += (sender, status) => Console.WriteLine(status);
        psrApi.SessionExpired += async (sender, e) =>
        {
            Console.WriteLine("Session has expired");
            //For example, you could re-login here...
        };

        Console.WriteLine($"Logged in; Session expiring at: { psrApi.SessionExpirationUtc?.ToLocalTime() }");

        psrApi.RealtimeEventManager.ServerMessageReceived += (sender, args) =>
            Console.WriteLine(args.ServerMessage.Message + $" was received ({args.ServerMessage.MessageType.ToString()})");
        psrApi.RealtimeEventManager.ContainerChanged += (sender, args) =>
            Console.WriteLine(args.Container.DataName() + $" was changed ({args.EventType.ToString()})");
        psrApi.RealtimeEventManager.RoleChanged += (sender, args) =>
            Console.WriteLine(args.Role.DataName() + $" was changed ({args.EventType.ToString()})");
        psrApi.RealtimeEventManager.UserChanged += (sender, args) =>
            Console.WriteLine(args.User.DataName() + $" was changed ({args.EventType.ToString()})");
        psrApi.RealtimeEventManager.GroupChanged += (sender, args) =>
            Console.WriteLine(args.Group.DataName() + $" was changed ({args.EventType.ToString()})");
        psrApi.RealtimeEventManager.DataBindingChanged += (sender, args) =>
            Console.WriteLine(args.DataBinding.DataId + $" was changed ({args.EventType.ToString()})");

        _psrApi = psrApi;
    }

    private static async Task PerformMultiFactorAuth(PsrMultiFactorAuthenticationRequest mfaRequest, PsrApi psrApi, string database, string username, string password)
    {
        if (mfaRequest.AuthenticatorType == PsrMultiFactorAuthType.Pki)
        {
            var pkiFields = GetCertificatePkiFields(mfaRequest);

            mfaRequest.RequiredFields.ToList().Find(f => f.Type == PsrMultiFactorField.SignedDataId).Value = pkiFields.SignedDataId;
            mfaRequest.RequiredFields.ToList().Find(f => f.Type == PsrMultiFactorField.CertificateThumbPrint).Value = pkiFields.CertificateThumbPrint;
        }
        else
        {
            foreach (var field in mfaRequest.RequiredFields)
            {
                Console.Write($"Enter 2nd factor '{mfaRequest.DisplayName}' ({field.Type.ToString()}): ");
                var mfa = field.Type == PsrMultiFactorField.Pin || field.Type == PsrMultiFactorField.NewPinRequired
                    ? ReadPassword()
                    : Console.ReadLine();
                field.Value = mfa;
            }
        }

        await psrApi.AuthenticationManager.Login(database, username, password, mfaRequest.RequiredFields);
    }

    private static PkiFields GetCertificatePkiFields(PsrMultiFactorAuthenticationRequest mfaRequest)
    {
        Console.WriteLine("Select a certificate from the store");
        var store = new X509Store("MY", StoreLocation.CurrentUser);
        store.Open(OpenFlags.ReadOnly | OpenFlags.IncludeArchived);
        var collection = store.Certificates.Find(X509FindType.FindByKeyUsage, X509KeyUsageFlags.KeyEncipherment, true);
        var selectedCert = X509Certificate2UI.SelectFromCollection(collection, "Select a certificate from the store", "",
            X509SelectionFlag.SingleSelection)[0];
        if (!(selectedCert.PrivateKey is RSACryptoServiceProvider csp))
        {
            throw new Exception();
        }

        string signedHash;
        using (var hashAlgo = HashAlgorithm.Create(HashAlgorithms.Sha1.ToString()))
        {
            if (hashAlgo == null)
            {
                throw new Exception();
            }

            var hash = hashAlgo.ComputeHash(mfaRequest.DataToSign);
            var oid = CryptoConfig.MapNameToOID(HashAlgorithms.Sha1.ToString());
            var bytes = csp.SignHash(hash, oid);
            signedHash = Convert.ToBase64String(bytes);
        }

        return new PkiFields()
        {
            SignedDataId = signedHash,
            CertificateThumbPrint = selectedCert.Thumbprint
        };
    }

    public class PkiFields
    {
        public string SignedDataId;
        public string CertificateThumbPrint;
    }
    ```
