# SAML Application for Dropbox

## SAML Configuration Example for Dropbox

This chapter explains how to configure the SAML application for **Dropbox**. It is assumed that [SAML]({{url.placeholder}}) has already been activated in the Admin Client.

- Log in as administrator at the **Dropbox**

- Open the Admin Console

![picture dropbox admin console](/assets/en/client_modules/applications/example_applications/saml_dropbox/saml_dropbox_1.png){ loading=lazy }

- Open Settings

![picture dropbox settings](/assets/en/client_modules/applications/example_applications/saml_dropbox/saml_dropbox_2.png){ loading=lazy }

- Single Sign On

![picture dropbox single sign-on](/assets/en/client_modules/applications/example_applications/saml_dropbox/saml_dropbox_3.png){ loading=lazy }

- This is where the data SSO URL and the certificate from the Admin Client must be deposited.

![picture database settings](/assets/en/client_modules/applications/example_applications/saml_dropbox/saml_dropbox_4.png){ loading=lazy }

- In the FullClient, a new SAML application must be created in the Applications module.

- Then the target page (login URL) and the XML file must be stored in the application.

![picture dropbox login link](/assets/en/client_modules/applications/example_applications/saml_dropbox/saml_dropbox_5.png){ loading=lazy }

The XML file must look like [this](https://cdn.manula.com/user/3511/docs/dropbox.xml).

- The application can now be executed via the LightClient.
