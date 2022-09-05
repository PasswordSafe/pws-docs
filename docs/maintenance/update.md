# Update

## Reasons for regular updates

Our development team is constantly working on the further development of the software. This does not only involve fixing any problems but also primarily the development of new features to adapt the software as best as possible to the requirements of our customers. Therefore, it is recommended that you regularly install updates.

The documentation always refers to the latest version available. If {{about.product}} deviates from the documentation (e.g. in appearance or also its functional scope), it makes sense to firstly update to the latest version.

!!! hint
    The update check on the server or the client can be used to easily install the latest version. The update check on the client must be activated in the settings for users beforehand. We recommend leaving the update check deactivated for normal users! Otherwise these users could independently attempt to install updates. Since a new client cannot connect to an old server, this results in the user not being able to log in.

## Requirements

The requirements should be checked or established before an update.

!!! danger "Be aware"
    Please always check the Changelog for requirements or breaking changes before updating!

### Check the software maintenance package

The right to install updates is acquired with the software maintenance package. It is important to note that you are permitted to install all updates as long as the software maintenance package is still active. If the software maintenance package has expired, you are only permitted to use those versions that were released during the term of the software maintenance package. Therefore, you should check whether the software maintenance package is still active before an update. This can be easily checked on the AdminClient under [License settings](/faq/licensing#settings){target=_blank}.

### Creating a backup

An update always involves making a profound change to the existing software. A corresponding [Backup](/faq/backup){target=_blank} should thus be created directly before the update to ensure that no data is lost if a serious problem arises.

### Checking compatibility

An attempt is always made to design the AdminClient so that it is backwards compatible. Unfortunately this is not always possible. Therefore, you should always check which client version the AdminClient is compatible with before an update. The [version history](/faq/changelogs){target=_blank} for the relevant version will provide this information.

!!! danger
    If the password for logging in to the AdminClient on the database has been saved, it is essential that it is noted down or temporarily saved elsewhere before an update!

### Latest installation files

The installation files can be downloaded from the [customer information system]({{url.customer_portal}}){target=_blank}.
Please simply use the access data that we sent to you by email to log in.

## Perform update

### Updating the AdminClient

The AdminClient is simply installed on top of the existing installation. The password from the Admin Client should be made available at this point in any case. After the installation of the Admin Client, the database is only accessible when it is activated. If the password is only in the {{about.product}}, it should be temporarily stored at this point.

!!! hint
    If the service has not been ended in advance, the installation wizard will give you the opportunity to do so. If the service is still not ended at this stage, the computer will then need to be restarted. It is thus recommended that the {{about.product}} services are ended before the update.

Further information on the installation wizard can be found in the section [Installation of the AdminClient](/faq/installAdminClient){target=_blank}.

### Patch level update for the databases

The databases are usually deactivated after updating the AdminClient because they do not yet have the corresponding patch level. This should be immediately checked. After logging in to the AdminClient, the module “Databases” is immediately visible. If the databases have been deactivated, you can reactivate them directly in the ribbon via the corresponding button. The patch level will be updated during this process.

### Updating the client

The updates for the client are also simply installed over the existing installation. Further information can be found in the section Installation of the client. Naturally, the update can also be carried out using the installation parameters.

### Updating the WebClient

The application server must firstly be updated. A new [WebClient](/faq/installWebClient){target=_blank} is then created according to the instructions for the web server being used. The document directory on the web server should now be completely emptied. The WebClient is then unzipped and copied to the document directory on the corresponding web server.

!!! danger "Be aware"
    If the WebClient is being operated on an IIS web server, a new config.bat is generated for creating the new version. This must not be executed if the WebClient has already been installed and it must be deleted without fail after a successful update.

!!! hint
    If the WebClient is used, the module: proxy_wstunnel must be installed when using Apache. With IIS the WebSocket Protocol becomes necessary. Further information can be found in the chapter System requirements for WebClient. This applies to version 8.5.0.14896 or newer.
