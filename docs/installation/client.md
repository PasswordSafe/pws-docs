# Installation Client

## Guide

The MSI installation files and the associated [Client system requirements](/installation/requirements/client) can be found in the corresponding sections. The following step-by-step guide will accompany you through the wizards.

![installation wizard page 1](/assets/en/installation/client/client-setup-1-en.png){loading=lazy}

You are required to read and accept the terms of service. These can also be printed.

![installation wizard page 2](/assets/en/installation/client/client-setup-2-en.png){loading=lazy}

The next step is to define the location of the client. The suggested location can be retained.You can also define whether additional components should be installed.

!!! danger
    Please only install the SSO service if terminal server operation is intended!

![installation wizard page 3](/assets/en/installation/client/client-setup-3-en.png){loading=lazy}

The actual installation starts in the next step.

![installation wizard page 4](/assets/en/installation/client/client-setup-4-en.png){loading=lazy}

The last step closes the setup and opens (if desired) the Client.

![installation wizard page 5](/assets/en/installation/client/client-setup-5-en.png){loading=lazy}

## Installed applications

There are always several applications installed.

![client icon](/assets/en/installation/client/client.png){loading=lazy}

This is the regular Client.

![offline client icon](/assets/en/installation/client/offlineclient.png){loading=lazy}

The Offline Client allows access to the data without connection to AdminClient.

![sso client icon](/assets/en/installation/client/ssoclient.png){loading=lazy}

The SSO Agent is the link between the browser add-ons and the database. It allows automatic login without opening the Client and runs in the background.

## Integrating a database

For connection to the database, the creation of a database profile is obligatory. The following information is required:

* Profile name: The name of the profile. This will be displayed on the client in the future
* IP address: The IP address of the {{about.product}} V8 server is stored here
* Database name: Specifies the name of the database

## Distributing database profiles via the registry

There is also an option to distribute database profiles. The profiles are specified via a corresponding registry entry. The next time {{about.product}} is started, the profiles will be saved in the local configuration file. The database connection can be made with the following keys:

``` py
HKEY_CURRENT_USER\SOFTWARE\MATESO\Password Safe and Repository 8\DatabaseProfiles
HKEY_LOCAL_MACHINE\SOFTWARE\MATESO\Password Safe and Repository 8\DatabaseProfiles
```

These keys are structured like this:

* HostIP: Server IP address
* DatabaseName: Name of the database
* LastUserName: The field for the user name can be specified here

![profil-registry](/assets/en/installation/client/profil-registry-en.png){loading=lazy}

Is the profile set with the following entries?

``` py
HKEY_LOCAL_MACHINE\SOFTWARE\MATESO\Password Safe and Repository 8\DatabaseProfiles
```

Then the last used date base as well as the last registered user are created with the following ID, when you log in for the first time:

``` py
HKEY_CURRENT_USER\SOFTWARE\MATESO\Password Safe and Repository 8\DatabaseProfiles
```

!!! hint
    When the corresponding registry entry is set and no related database profile exists, the profile will be created at the next start-up. Please note that profiles created like this cannot be edited or deleted in the client.
