---
hide:
    - toc
---

# Create user

=== "JavaScript"

    ``` javascript
    const { EncryptWithPassword, EncryptWithPublicKey } = require('../node/lib/MtoEncryption');
    const { MtoPbkdf2GenerateSalt } = require('../node/lib/MtoPbkdf2');
    const MtoRsa = require('../node/lib/MtoRsa');

    const createUser = async (api, username, password, parentId) => {
        const encodedPassword = unescape(encodeURIComponent(password))
        const pwHash = MtoPbkdf2GenerateSalt(encodedPassword, 16, 100000, 32)
        const rsa = new MtoRsa()
        rsa.generateKeyPair()
        const encryptedPrivateKeyWithPassword = EncryptWithPassword(encodedPassword, rsa.privateKeyToXml())

        // Membership of current API user
        const currentUserRsa = new MtoRsa()
        currentUserRsa.publicKeyFromXml(api.currentUser.PublicKey)
        const encryptedPrivateKeyWithPublicKey = EncryptWithPublicKey(currentUserRsa, rsa.privateKeyToXml())

        const user = {
            UserName: username
        }

        await api.organisationUnitManager.addOrganisationUnitUser(
            user,
            pwHash.key,
            pwHash.salt,
            rsa.publicKeyToXml(),
            encryptedPrivateKeyWithPassword,
            encryptedPrivateKeyWithPublicKey,
            parentId
        )
    }
    ```

=== "C#"

    ``` c#
    async Task GenerateUser(PsrApi api, string username, string password, Guid parentId)
    {
        // Generate the cryptographic key pair and hashes
        var hash = new MtoHashPbkdf2Sha1(16, 100_000, 32);
        var keyPair = api.EncryptionManager.GenerateKeyPair();
        
        // Encrypt the password
        var encryptedPassword = api.EncryptionManager.EncryptWithPassword(
            Encoding.UTF8.GetBytes(password), keyPair.PrivateKey);
        
        // Generate the legitimate for the current user
        var legitimate = api.EncryptionManager.EncryptWithPublicKey(
            api.CurrentUser.PublicKey, keyPair.PrivateKey);
        
        // Create the user object
        var user = new PsrOrganisationUnitUser()
        {
            UserName = username
        };
        
        // Create the user on the database
        await api.OrganisationUnitManager.AddOrganisationUnitUser(
            user,
            hash.CalculateHash(Encoding.UTF8.GetBytes(password)),
            hash.Salt,
            keyPair.PublicKey,
            encryptedPassword,
            legitimate,
            parentId
        );
    }
    ```
