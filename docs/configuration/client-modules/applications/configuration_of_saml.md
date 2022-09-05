# Configuration of SAML

## What is SAML?

The Security Assertion Markup Language (SAML) is an XML framework for exchanging authentication and authorization information. It provides functions to describe and transmit security-related information. This means that you can use one set of credentials to log in to many different websites. It is much easier to manage one login per user than separate logins for email, Customer Relationship Management (CRM) software, Active Directory, and more.

## Preconditions

In order for the users to be able to use SAML, "SMTP" must be set up and an e-mail address must be stored with the corresponding users.
In addition, the WebClient is mandatory. Therefore, the WebClient must already be "set up or installed".

## Configuration

In order to create **SAML applications**, SAML must first be activated.

This is implemented in the settings of the database in the Admin Client:

![picture activate saml](/assets/en/client_modules/applications/configuration_of_saml/configuration_of_saml_1.png){ loading=lazy }

As soon as the checkbox is ticked, the next step is to enter the URL of the WebClient. The SAML configuration screen should then look like this:

![picture configure saml](/assets/en/client_modules/applications/configuration_of_saml/configuration_of_saml_2.png){ loading=lazy }

The screen is left open and the configuration is continued at the FullClient.
To do this, log on to the client as usual and switch to the **Applications** module. Select a **new SAML application** and fill it with the relevant data from the service provider.

!!! hint
    The data of the service provider, which are entered in the FullClient, can be found at the respective provider. This differs from provider to provider.

![picture new saml application](/assets/en/client_modules/applications/configuration_of_saml/configuration_of_saml_3.png){ loading=lazy }

In addition, the data must be stored in the **Admin Client** at the service provider.

After the successful entry of all data, the last necessary step is the verification of the user. This is done by clicking on the tile. This gives the user an e-mail with which he can verify himself.

![picture saml application](/assets/en/client_modules/applications/configuration_of_saml/configuration_of_saml_4.png){ loading=lazy }

After verification, the **SAML application** can be started from the LightClient view.

!!! danger "Be Aware"
    As this is a passwordless authentication, it is not necessary to link the **SAML application** with a password.

!!! hint
    Setup and configuration instructions for [Dropbox]({{url.placeholder}}) and [Postman]({{url.placeholder}}) can be found in the corresponding chapters.
