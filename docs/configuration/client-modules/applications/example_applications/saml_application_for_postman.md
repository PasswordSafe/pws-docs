# SAML application for Postman

## SAML configuration example for Postman

This chapter explains how to configure the SAML application for **Postman**. It is assumed that [SAML]({{url.placeholder}}) has already been activated in the admin client.

- First, you register with Postman.

- After logging in, click on the avatar and select "**Settings**".

![picture postman settings](/assets/en/client_modules/applications/example_applications/saml_postman/saml_postman_1.png){ loading=lazy }

- Then click on **Authentication**. Select a new method in the upper right corner.

![picture postman authentication option](/assets/en/client_modules/applications/example_applications/saml_postman/saml_postman_2.png){ loading=lazy }

- Here the Authentication Type must be defined with **SAML 2.0** and any useful Authentication Name.

![picture postman add authentication](/assets/en/client_modules/applications/example_applications/saml_postman/saml_postman_3.png){ loading=lazy }

Then you come to the actual configuration.

- Store Provider Details

- **Identity Provider Details**
The data from the Admin Client is uploaded as XML or stored manually.

![picture postman identity provider details](/assets/en/client_modules/applications/example_applications/saml_postman/saml_postman_4.png){ loading=lazy }

- **Service Provider Details**
The service provider details are now copied to the application in the {{about.product}} Client.

![picture postman service provider details](/assets/en/client_modules/applications/example_applications/saml_postman/saml_postman_5.png){ loading=lazy }

!!! hint
    Please note that a **Relay State** is required. This value can be created in the **Configure Identity Provider Details View**.
