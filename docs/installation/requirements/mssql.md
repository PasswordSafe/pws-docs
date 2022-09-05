# MSSQL Server

## Server configuration

We recommend that you install the database on a separate MSSQL database cluster in order to prevent system failures. It should also be mirrored to another data centre at a different location.

We recommend the following specs to ensure smooth operation:

- Min. Windows Server 2012 R2
- At least 4 x CPU
- Min. 16 GB RAM
- Min. 100 GB hard disk space
- Installed and licensed Microsoft MSSQL Server 2012 or later (starting from Express)

!!! note
    comparison of the different MSSQL server editions can be found under the following link:  
    [SQL server editions](https://www.microsoft.com/de-de/sql-server/sql-server-2017-editions)

!!! danger "Azure SQL service"
    Unfortunately the Azure SQL service cannot currently be supported.
    Use this service at your own risk!

## Database configuration

At least two databases are created during installation:

- The configuration database, which contains the settings for the application server
- The vault database, which holds all information about users and secrets

An MSSQL database is required for each {{about.product}} vault. Multiple databases can be run on one SQL instance. As {{about.product}} V8 enables the clean separation of all data via the authorization concept, a single MSSQL database is sufficient for most applications.

!!! danger "Be aware"
    The databases must have the collation `Latin1_General_CI_AS`. If the SQL Server uses a different collation, {{about.product}} cannot create the database correctly. In this case, the database must be created manually on the server with the correct collation in order to subsequently link it to the AdminClient.

### Permissions

A dedicated SQL user should be used for the {{about.product}} database conncection. The server admin (sa) may be used but is not recommended or necessary. The user requires the following rights:

- dbCreator: If the databases are created via the AdminClient, the user must have the dbCreator right.
- dbOwner: If the databases are created manually on the MSSQL server and are only managed by the AdminClient, dbOwner rights are sufficient.

In any case, the user must have read rights to the master database.

## Firewall / Ports

The application server requires the following port to be enabled:

- Port 1433 TCP for communication with the application server (incoming)
