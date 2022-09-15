# Application server

## Server configuration

The business logic is managed by the application server. The load is determined by both the number of users and also the number of server requests. To ensure optimal operation, we recommend that the following hardware resources are made available:

- At least Windows Server 2012 R2 (current patch level is mandatory!)
- At least 2 x CPU
- Min. 8 GB RAM
- Min. 40 GB hard disk space
- .Net library 4.8.0 or newer
- Firewall release
- Windows Management Framework 5.0 must be installed!

!!! danger "Be aware"
    If you are using Windows Server 2012 R2, the server requires the latest patch level (SSL3, TLS) to operate securely!

## Firewall / Ports

The application server requires that the following ports are enabled:

- Port 443 HTTPS for connection to the {{about.company}} license server (outgoing)
- Port 11011 TCP for communication with clients or web server IIS (incoming)
- Port 11014 TCP for the backup service (usually does not need to be unlocked)
- Port 11016 TCP for the Web services (incoming; only when using the WebClient)
- Port 11018 TCP for real-time update (incoming)
- Port 1433 TCP for communication with SQL Server (outgoing)

!!! note
    If you are connected from outside your local network (e.g. via VPN), you should ensure that the MTU size is configured to 1500 bytes (1472 bytes + 28 bytes for the header). Otherwise, the packets to be transmitted are fragmented, which can lead to a significant performance loss.

## Required users

A user via which the {{about.product}} server can log in to the SQL server is required for configuration. A user who can execute the {{about.product}} services is also required. The various configurations are briefly explained here.

### Service user

The service user runs the {{about.product}} server service. The following can be configured here:

- AD user: It is specified in the format Domain\username along with its associated password
- Local user: It is specified in the format .\user name along with its associated password
- Local system account: It can be activated via a checkbox - not recommended in production environments!

!!! danger "Be aware"
    Certificates are generated during installation and usage. Therefore, the service user must be a local administrator or a domain administrator, otherwise it would have no rights to save data in the local server certificate store.

### Backup service user

In principle, the backup service is run by the service user. In expert mode, however, it may be another user. A backup service user has the same requirements as a service user.

### User for the SQL configuration instance

The user for the SQL configuration instance logs on to the SQL server to create the {{about.product}} databases. You can use an AD user or a local SQL user for this purpose. The following options are available:

- Service user: If the checkbox is activated, the stored service user is used. Please note that this can only be configured via the checkbox. It is not possible to manually set up the service user again.
- SQL user: An SQL user may also be used. It is saved on the SQL server according to the configuration.

!!! note
    If the {{about.product}} server is to be used to create databases, the user needs `dbCreator` rights. Alternatively, the databases can be created directly by the SQL server. The {{about.product}} server will manage them. In this case, `dbOwner` rights are sufficient. See [MSSQL requirements](/installation/requirements/mssql/#permissions)

#### Configuration examples

Option 1: **A service user** is created in the AD. It will be added as a service user, which can start both the {{about.product}} server service and the backup service. This user requires rights to start services. This user is then used for the SQL configuration instance (by activating the check box).

Option 2: **A local user** is used as a service user. Specify a local SQL user, secured with a password, as a user for the SQL configuration instance. This could be the default sa user, for example.

!!! danger "Be aware"
    It is not possible to combine local system and service users for the SQL configuration instance!

## PowerShell permissions

In {{about.product}} V8, Windows PowerShell scripts are used in several places. These are required, for example, to use the certificate-protected server key or to create the server certificate. Password Reset also uses this functionality. It is therefore absolutely necessary that the Windows security policy allows PowerShell scripts to be executed.

### Set policy

1. Open the PowerShell console.  
2. Enter `Set-ExecutionPolicy RemoteSigned` and confirm.

### Verify policy

The changed policy can be verified via `Get-ExecutionPolicy -list`.
