# Azure Active Directory Services FAQ

## Is it possible to migrate from LDAP to Azure AD?

Currently, an automated migration from LDAP users (E2E as well as MasterKey) to Azure AD users is not possible!

## Which port is used for the SCIM endpoint for provisioning users/groups from Azure AD to the Application Server?

11015 is the port that will be used for the communication from Azure AD to {{about.product}}.

## Does the Azure AD connection support nested groups?

Due to Azure based technical limitations, {{about.product}} does not support nested groups.

## Does Azure AD work on servers that are only available internally?

An integration on servers, that are not accessible from external sources, the integration of Azure AD is also possible. For this, you can use the [Provisioning Agent]({{url.azure_provisioning_agent_info}}). This can be installed on all or only one application server. It must be noted that the IP or DNS name of the "Tenent URL" specified in the subsequently created enterprise application is present in the alternative application names in the server certificate.
Tip: `https://127.0.0.1:11015/scim` can also be specified as the "Tenent URL", in which case 127.0.0.1 must again be present in the alternative application names in the server certificate.

- Download the Provisioning Agent from [here]({{url.azure_provisioning_agent_download}})
- Install the Provisioning Agent on the server with the {{about.product}} Server
- Start "AAD Connect Provisioning Agent Wizard"
- Select "On-premises application provisioning Azure AD to application", click next
- Click "Authenticate" and authenticate with a user.This user should be a Hybrid administrator or a global administrator.
- Click "Confirm"
- Wait for the application to finish the registration in Azure
- Switch to the Azure Portal
- Click "Azure Active Directory"
- Click "Enterprise applications"
- Click "New application"
- Search for "On-premises SCIM app"
- Click "On-premises SCIM app"
- Adjust the name
- Click "Create"
- Wait for the operation to end
- Click the created application in the overview of "Enterprise applications"
- Click "Provisioning"
- Click "Get started"
- Set provisioning mode "Automatic"
- Unhide "On-Premises Connectivity"
- Assign the just installed agent to this application by selecting it and click "Assign Agent(s)"
- It takes about 20 minutes until the agent is correctly connected to your application and you can proceed.
