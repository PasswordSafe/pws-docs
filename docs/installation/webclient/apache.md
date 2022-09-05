# Apache

In order to integrate the WebClient onto an Apache server, it is first necessary to enter all of the relevant settings:

## Document directory

The folder from which the WebClient should be operated is entered here.
The default folder is /var/www/html

## SSL certificate path

It is necessary to enter the directory in which the certificate will be saved here.

## SSL certificate key path

Finally, it is necessary to enter where the certificate key is located here.

![installation-wizard-5](/assets/en/installation/webclient/installation-webclient-7-en.png){loading=lazy}

Once all of the settings have been entered, the WebClient can be created via the button in the ribbon. The folder in which the ZIP file is located will then open automatically. The archive is now unzipped and the contents copied to the document directory on the web server.

The configuration for the Apache server has now also been created and can be viewed on the AdminClient.

![installation-wizard-6](/assets/en/installation/webclient/installation-webclient-8-en.png){loading=lazy}

The configuration can be selected using CTRL+A and copied. It is then directly integrated onto the Apache server.

!!! hint
    The configuration of the Apache server is always individual. Therefore, it is only possible to roughly describe the process for a standard installation.

## Standard configuration

The file /etc/apache2/sites-available/default-ssl.conf is (for example "nano") opened. Everything between`#!python <IfModule mod_ssl.c>`and`#!python </IfModule mod_ssl.c>`is now deleted and replaced by the configuration from the server. Apache is subsequently restarted via systemctl reload apache.

The WebClient is now ready to use and can be directly started. Further information can be found at the end of this section under "SCalling up the WebClient".
