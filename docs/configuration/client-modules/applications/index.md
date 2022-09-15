# Applications

## What are applications?

Applications can be used to configure automated logins to various systems. Especially when combined with various protective mechanisms, the company benefits in terms of security because complex passwords are automated and entered in the login masks in concealed form. Various types are available, such as Remote Desktop (**RDP**), Secure Shell (**SSH**), general applications (**SSO**) and web applications. The Single Sign On Engine offers countless configuration options to enable automatic logon to almost any kind of software.

![picture applications module](/assets/en/client_modules/applications/applications_1.png){ loading=lazy }

- Automatic logins to websites are covered by the [SSO agent]({{url.placeholder}}).

## The four types of applications

{{about.product}} varies between four different types of applications: RDP, SSH, SSO and web applications.

![picture applications](/assets/en/client_modules/applications/applications_2.png){ loading=lazy }

In terms of how they are handled, **RDP and SSH** applications can be covered together. Both types of application can be (optionally) "embedded" in {{about.product}}. The relevant session then opens in its own tab in the [reading pane]({{url.placeholder}}). All other forms of automatic logins are summarized in the **SSO applications** and **web applications** categories. How exactly these logins are created and used is covered in the [next section]({{url.placeholder}}) and in the [web applications]({{url.placeholder}}) chapter. They include all forms of Windows login masks and also applications for websites. In contrast to RDP and SSH applications, they cannot be started embedded in {{about.product}} but are instead opened as usual in their own window. These SSO applications need to be defined in advance. In {{about.product}}, this is also described as [learning the applications]({{url.placeholder}}). In contrast, RDP and SSH can be both completely defined and also started within {{about.product}}.

## RDP and SSH

A new RDP/SSH application can be created via the ribbon or also the context menu that is accessed using the right mouse button. A corresponding form opens in each case where the variables for a connection can be defined.

![picture new rdp applications](/assets/en/client_modules/applications/applications_3.png){ loading=lazy }

These variables also correspond precisely to those (using the example of RDP here) that can be configured when creating an RDP connection via “mstsc”. Whether the connections should be started in a tab, full screen mode or in a window can be defined in the field **"window mode"**.

## Working with RDP and SSH applications

If you have created e.g. an RDP connection, this can now also be directly started via the ribbon. The connection to the desired session can be established via the icon **Establish RDP connection**.

![picture establish rdp connection](/assets/en/client_modules/applications/applications_4.png){ loading=lazy }

{{about.product}} now attempts to log in to the target system with the information available. Data that are not saved in the form will be directly requested when opening the session. It is thus also possible to only enter the IP address and/or the password after starting the {{about.product}} application. If all data has been retrieved, the RDP session will open in a tab – if so defined (Window mode field in the application):

![picture rdp session](/assets/en/client_modules/applications/applications_5.png){ loading=lazy }

## Logging in via SSH certificates

It is also possible to complete the authentication process using SSH certificates. For this purpose, the certificate is saved as a document in .ppk format. (It may be necessary to firstly approve this file ending in the settings). The document is then linked to the record via the footer. The record does not need to have a password. However, it is necessary for the record to be linked to a SSH application.

## Linking records and applications

The application defines the requirements for the desired connection and also optionally for the target system. By linking records with applications, the complete login process can be automated. If the record now also supplies the user name and password, all of the information required for the login is available. Applications and records are linked via the "Start" tab in the ribbon. If this link to a record is established, a 1-click login to the target system is possible.

![picture direct link to rdp](/assets/en/client_modules/applications/applications_6.png){ loading=lazy }

The following example illustrates this process using an RDP connection:

![picture example application](/assets/en/client_modules/applications/applications_7.png){ loading=lazy }

A record can also be linked to multiple target systems in this manner. The user name and record are supplied by the record, while all other information necessary for the login is supplied by the different applications. In the following example, a record (user name and password) is linked to multiple access points.

![picture one password multiple applications diagram](/assets/en/client_modules/applications/applications_8.png){ loading=lazy }

This is generally a very common scenario. Nevertheless, it should be noted that accessing multiple servers with one single password is questionable from a security standpoint. It is generally recommended that a unique password is issued for every server/access point.

!!! hint
    It is possible to leave the **IP address** field empty in the application. If an **IP address** field exists in the linked record then this address will be used. If there is also no IP address in the record, a popup window will appear in which the desired IP address can be entered manually.

Alternatively, it is possible to connect several records with one RDP connection.
In this way, you can combine different users with an RDP connection and register them straightforward.

![picture connect several accounts to applications](/assets/en/client_modules/applications/applications_9.jpg){ loading=lazy }
