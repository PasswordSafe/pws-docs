# Microsoft IIS

If the WebClient is being operated on a Microsoft IIS web server, there are two methods for integrating it into the system:

## Create as its own website

For this option, a website with the name "WebClient" will be directly created on the IIS by config.bat. The WebClient will be operated here from the standard directory C:\inetpub\wwwroot.

## Integrate in existing website

requires there to be an existing website. Therefore, a website needs to be firstly created on the IIS web sever. The name of the website then needs to be entered in the AdminClient. It is also necessary to enter the folder from which the WebClient should be operated under "website directory". The format here is "/webclient"

![installation-wizard-1](/assets/en/installation/webclient/installation-webclient-3-en.png){loading=lazy}

Once all of the settings have been entered, the WebClient can be created via the corresponding button in the ribbon. When the ZIP archive containing the WebClient has been created, it is copied to the previously defined directory (C:\inetpub\wwwroot as standard) and unzipped there to create a new directory.

## Config.bat

The file config.bat can be found in the newly created WebClient directory and now needs to be executed when logged on as the administrator. This will integrate the WebClient into the IIS web server.

!!! hint
    If the system requirements have not been met, you will be informed that the URL Rewrite and/or Application Request Routing modules need to be installed. In this case, follow the instructions on the wizard that will then immediately open. In addition, it is necessary to install the WebSocket Protokoll. Afterwards, config.bat needs to be executed again.

If the website has been correctly created, this will be correspondingly indicated by the notification IIS page created.

![installation-wizard-2](/assets/en/installation/webclient/installation-webclient-4-en.png){loading=lazy}

!!! danger
    Following a successful installation, it is imperative that config.bat is deleted! The config.bat file should also not be used for an "update"

## Certificate

The certificate then needs to be saved. Select the newly created website on the IIS web server. The bindings can now be opened on the far right.

![installation-wizard-3](/assets/en/installation/webclient/installation-webclient-5-en.png){loading=lazy}

Select the https entry and open it for editing. The SSL certificate is then selected here.

![installation-wizard-4](/assets/en/installation/webclient/installation-webclient-6-en.png){loading=lazy}

In addition, the {{about.product}} certificate needs to be exported from the {{about.product}} Server and imported onto the ISS under local computer > trusted root certificate location -> certificates. Further information can be found in the section "Certificates"
