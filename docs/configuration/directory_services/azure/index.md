# Azure Active Directory Services

More and more companies use cloud services. Therefore, also the management of users is outsourced. Instead of a classic Active Directory via LDAP, an Azure AD is used more often. {{about.product}} integrates the possibility to bring in users and roles from Azure. To use users and roles from multiple Azure ADs, you can create multiple profiles.

## Introduction

### Differences to the LDAP connection

The connection to the Azure AD differs in one special point from the connection to a conventional Active Directory. While {{about.product}} queries the users, groups, and roles actively from the conventional AD, the Azure AD is pushing them automatically to our server. For this a so-called [SCIM service]({{url.wikipedia_scim}}) is used.

To login to {{about.product}}, after entering the username a popup opens for the authentication with the entered Microsoft account. Here, a possible configured second factor is also requested. The authentication is handled via the [Open ID Connect protocol]({{url.openid_connect}}).

### Linking Azure AD

Below you will find instructions on how to connect Azure AD to {{about.product}}. In the Azure portal, go to the management page of your Azure Active Directory. Use an account with administrative permissions for this. During this, login to {{about.product}} with an account that has the user right "Display organisational structure module", "Can manage Azure AD profiles", and "Can create new Azure AD profiles" enabled.

## Setup

### New Azure application

Login to the [Azure portal]({{url.azure_portal}}) and go to the management page of your Azure Active Directory.

!!! note
    You need an account with administrative permissions

- Write down your "Tenant ID" shown in the Azure console or by using PowerShell:

```PowerShell
Connect-AzureAD
```

- Navigate in your Azure AD to "Enterprise applications"
- Add an own application, that is not listed in the Azure Gallery – in our example, we name it "{{about.product}}"

!!! note
    A key feature of {{about.product}} is, that it is self-hosted by our customers. However, to be listed in Azure Gallery, a SaaS model is required. Therefore, {{about.product}} is not available in the Azure Gallery.

- When the application was created successfully, you are redirected to it automatically
- Write down the "Application ID"
- In the navigation, click "Users and groups"
- Add the Users and groups that should be available to {{about.product}}

!!! danger "Be aware"
    The import of Azure groups as {{about.product}} roles is only possible if you have booked the Azure package Azure AD Premium P2!

- Navigate to the "Provisioning" page
- Configure the Provisioning Mode to "Automatic"

### {{about.product}} Azure AD configuration

!!! info
    Your {{about.product}} user need the following permissions:

    - Display organisational structure module
    - Can manage Azure AD profiles
    - Can create new Azure AD profiles

- Navigate to the module "Organisational structure"
- In the toolbar, click on "Manage profiles" in the category "Azure AD"
- Create the profile with your information
- Insert the `Tenant ID` and the `Application ID`
- As soon as the profile has been saved, a popup opens for generating a token
- Choose a desired expiration date (max. 10 years) and click "Generate token"
- Write down the values of the fields "Tenant URL" and "Secret Token"

### Azure provisioning configuration

Fill the fields "Tenant URL" and "Secret Token" with the information provided by {{about.product}}
Click "Test Connection"
When the test has been successful, click on "Save" at the top of the page
Back on the "Provisioning" page, click "Start provisioning"
In the settings of the provisioning, check if "Provisioning Status" is set to "On"
All allocated users and groups are created in {{about.product}} now

!!! hint
    Azure´s default provisioning interval is 40 Minutes. So it may some time until the users and roles are shown in {{about.product}}.

!!! danger "Be aware"
    Please note that Azure establishes the connection to {{about.product}}. For this, the client URL must be accessible from an external network / provisioning agent and any used SSL certificate must be valid!
    If the users are not created in {{about.product}}, consult the Azure Enterprise Application Provisioning log for more information.

### Azure login configuration

To enable the Azure login for your users, a few more steps are required:

- Navigate to the Overview page of your Azure AD
- Navigate to "App registrations"
- If no application is displayed, click "All applications"
- Click on "{{about.company}} {{about.product}}" and navigate to "Authentication"
- Click on "Add a platform", select "Mobile and desktop applications" and configure the required URIs:

|          Client          |                                    URI                                     |
|:------------------------:|:--------------------------------------------------------------------------:|
| WebClient                | `https://`WEBCLIENT_URL`/authentication/login-via-oidc`                    |
| FullClient & SSO Agent   | `https://login.microsoftonline.com/common/oauth2/nativeclient`             |
| iOS & Android            | `psrmobile://auth`                                                         |
| Google Chrome Extension  | `https://bpjfchmapbmjeklgmlkabfepflgfckip.chromiumapp.org`                 |
| Microsoft Edge Extension | `https://ahdfobpkkckhdhbmnpjehdkepaddfhek.chromiumapp.org`                 |
| Firefox Extension        | `https://28c91153e2d5b36394cfb1543c897e447d0f1017.extensions.allizom.org/` |

!!! danger "Be aware"
    In order to use Azure login with the desktop client, [WebView2]({{url.webview2}}) from Microsoft must be installed on the client device.

### Set API permissions

Finally, the API permissions for the Azure API have to be set, so the login to {{about.product}} can be performed successfully.

Navigate to "API permissions" and click "Add a permission"
Select "Microsoft Graph" and then "Delegated permissions"
Set the checkboxes for "openid" and "profile" just under "OpenId permissions"
Click on "Add permissions"
Click on "Grant admin consent for YOUR_AD_NAME"
