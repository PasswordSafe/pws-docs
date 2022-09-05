# SAP GUI logon - SSO Application

## Fundamental information

Logging into SAP can be achieved via the usage of [start parameters]({{url.placeholder}}). The prerequisite here is for the login process to be carried out via the "SAPshortcut".
All available parameters are listed in the [SAP-Wiki](https://wiki.scn.sap.com/wiki/display/NWTech/SAPshortcut).

Form
Firstly, a [form]({{url.placeholder}}) should be created with the required fields. This could look like this:

![picture sap form](/assets/en/client_modules/applications/example_applications/sap_gui_logon/sap_gui_logon_1.png){ loading=lazy }

## Record

A corresponding record is then created via the form:

![picture sap record](/assets/en/client_modules/applications/example_applications/sap_gui_logon/sap_gui_logon_2.png){ loading=lazy }

## Application

A corresponding SSO application now needs to be created.

![picture sap application](/assets/en/client_modules/applications/example_applications/sap_gui_logon/sap_gui_logon_3.png){ loading=lazy }

## Link

The record now needs to be linked with the application. To do this, open the context menu by right clicking on the record. The previously created application can then be selected here via **Applications** and **Connect application**.

![picture link application](/assets/en/client_modules/applications/example_applications/sap_gui_logon/sap_gui_logon_4.png){ loading=lazy }

The link is then displayed in the ribbon. Clicking on the link will now open SAP, whereby the parameters for logging in to the application are directly transferred.
