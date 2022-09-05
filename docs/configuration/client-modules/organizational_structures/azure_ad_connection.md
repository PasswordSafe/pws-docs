# Azure AD connection

## Why Azure AD?

More and more companies use cloud services. Therefore, also the management of users is outsourced. Instead of a classic Active Directory via LDAP, an Azure AD is used more often. {{about.product}} integrates the possibility to bring in users and roles from Azure. To use users and roles from multiple Azure ADs, you can create multiple profiles.

## Differences to the LDAP connection

The connection to the Azure AD differs in one special point from the connection to a conventional Active Directory. While {{about.product}} queries the users, groups, and roles actively from the conventional AD, the Azure AD is pushing them automatically to our server. For this a so-called SCIM service is used.

To login to {{about.product}}, after entering the username a popup opens for the authentication with the entered Microsoft account. Here, a possible configured second factor is also requested. The authentication is handled via the Open ID Connect protocol.

## Linking Azure AD

Below you will find instructions on how to connect Azure AD to {{about.product}}. In the Azure portal, go to the management page of your Azure Active Directory. Use an account with administrative permissions for this. During this, login to {{about.product}} with an account that has the user right "Display organizational structure module", "Can manage Azure AD profiles", and "Can create new Azure AD profiles" enabled.

### Preparations in the Azure portal

Note the "Tenant ID" of the Azure AD – you will need this later for the configuration in {{about.product}}
Navigate in your Azure AD to "Enterprise applications"
Add an own application, that is not listed in the Azure Gallery – in our example, we name it "{{about.company}} {{about.product}}"
**Note:** A key feature of {{about.product}} is that it is self-hosted by our customers. However, to be listed in Azure Gallery, a SaaS model is required. Therefore, {{about.product}} is not available in the Azure Gallery.
When the application was created successfully, you are redirected to it automatically
Note the "Application ID" – again, this is needed later
In the navigation, click "Users and groups"
Add the Users and groups that should be available in {{about.product}}
Navigate to the "Provisioning" entry
Configure the Provisioning Mode to "Automatic"
Keep the browser tab open and switch to {{about.product}}
!The import of Azure groups as {{about.product}} roles is only possible if you have booked the Azure package Azure AD Premium P2!

### Create an Azure AD profile in {{about.product}}

Navigate to the module "Organizational structure" or "Roles"
In the toolbar, click on "Manage profiles" in the category "Azure AD"
Create the profile with your information
Insert the Tenant ID and the Application ID you noted before
As soon as the profile has been saved, a popup opens for generating a token
Choose a desired expiration date (max. 10 years) and click "Generate token"
Note down the values of the fields "Tenant URL" and "Secret Token"
Switch back to the Azure portal
Provisioning configuration
Fill the fields "Tenant URL" and "Secret Token" with the information provided by {{about.product}}
Click "Test Connection"
When the test has been successful, click on "Save" at the top of the page
Back on the "Provisioning" page, click "Start provisioning"
In the settings of the provisioning, check if "Provisioning Status" is set to "On"
All allocated users and groups are created in {{about.product}} now

!!! hint
    The default provisioning interval is 40 Minutes. So it may take this amount of time until the users and roles are shown in {{about.product}}.

!!! danger "Be Aware"
    Please note that Azure establishes the connection to {{about.product}}. For this, the client URL must be accessible from an external network and any used SSL certificate must be valid!

If the users are not created in {{about.product}}, see the Azure Enterprise Application Provisioning log for more information.

## Configuration of the login

1. To make sure Azure users are able to log in to {{about.product}}, a few further configuration steps are required.
2. In Azure, navigate to the Overview page of your Azure AD
3. Navigate to "App registrations"
4. If no application is displayed, click "All applications"
5. Click on "{{about.company}} {{about.product}}" and navigate to "Authentication"
6. Click on "Add a platform", select "Mobile and desktop applications" and configure the required URIs

|For which client?|What URI is required?|
|-----|------|
|WebClient|Custom URI: ```https://WEBCLIENT_URL/authentication/login-via-oidc```|
|FullClient & SSO Agent|```https://login.microsoftonline.com/common/oauth2/nativeclient```|
|iOS & Android|Custom URI: ```psrmobile://auth```|
|Google Chrome Extension|Custom URI: ```https://bpjfchmapbmjeklgmlkabfepflgfckip.chromiumapp.org```|
|Microsoft Edge Extension|Custom URI: ```https://ahdfobpkkckhdhbmnpjehdkepaddfhek.chromiumapp.org```|
|Firefox Extension|Custom URI: ```https://28c91153e2d5b36394cfb1543c897e447d0f1017.extensions.allizom.org/```|

!!! danger "Be Aware"
    In order for your users to be able to log in to the FullClient on the desktop with the imported users, [WebView2](https://developer.microsoft.com/de-de/microsoft-edge/webview2/#download-section) from Microsoft must also be installed on each end device. This is required to be able to display general websites (Azure login page) in the FullClient.

### Set API permissions

Finally, the API permissions for the Azure API have to be set, so the login to {{about.product}} can be performed successfully.

1. Navigate to "API permissions" and click "Add a permission"
2. Select "Microsoft Graph" and then "Delegated permissions"
3. Set the checkboxes for "openid" and "profile" just under "OpenId permissions"
4. Click on "Add permissions"
5. Click on "Grant admin consent for YOUR_AD_NAME"

## Frequently Asked Questions

### Is it possible to migrate from LDAP to Azure AD?

Currently, an automated migration from LDAP users (E2E as well as MasterKey) to Azure AD users is **not possible**!

## Which port is used for the SCIM endpoint for provisioning users/groups from Azure AD to {{about.product}} Application Server?

11015 is the port that will be used for the communication from Azure AD to {{about.product}}.

## Does {{about.product}} Azure AD connection support nested groups?

Due to Azure based technical limitations, {{about.product}} does not support nested groups.

## Does Azure AD work on servers that are only available internally?

An integration on servers, that are not accessible from external sources, the integration of Azure AD is also possible. For this, you can use the Provisioning Agent. This can be installed on all or only one application server. It must be noted that the IP or DNS name of the "Tenent URL" specified in the subsequently created enterprise application is present in the alternative application names in the server certificate.
Tip: "```https://127.0.0.1:11015/scim```" can also be specified as the "Tenent URL", in which case 127.0.0.1 must again be present in the alternative application names in the server certificate.

1. Download the Provisioning Agent from [here](https://aka.ms/OnPremProvisioningAgent)
2. Install the Provisioning Agent on the server with the {{about.product}} Server
3. Start "AAD Connect Provisioning Agent Wizard"
4. Select "On-premises application provisioning Azure AD to application", click next
5. Click "Authenticate" and authenticate with a user.This user should be a Hybrid administrator or a global administrator.
6. Click "Confirm"
7. Wait for the application to finish the registration in Azure
8. Switch to the Azure Portal
9. Click "Azure Active Directory"
10. Click "Enterprise applications"
11. Click "New application"
12. Search for "On-premises SCIM app"
13. Click "On-premises SCIM app"
14. Adjust the name
15. Click "Create"
16. Wait for the operation to end
17. Click the created application in the overview of "Enterprise applications"
18. Click "Provisioning"
19. Click "Get started"
20. Set provisioning mode "Automatic"
21. Unhide "On-Premises Connectivity"
22. Assign the just installed agent to this application by selecting it and click "Assign Agent(s)"
23. It takes about 20 minutes until the agent is correctly connected to your application and you can proceed.
24. Continue with "Provisioning configuration" on this help page above
