# Learning the applications

## Which applications need to be learned?

As already indicated in the previous section, RDP and SSH applications are completely embedded in {{about.product}}. These applications thus do not need to be specially learned. All other applications in Windows need to be learned once.

## What does learning mean?

The record contains the user name and password. Learning involves defining the steps required. The result is equivalent to a script that defines where precisely the login data should be entered. In {{about.product}}, the completed instructions themselves are also known as an "application".

## Relevant rights

The following options are required.

### User right

- Can add new RDP applications
- Can add new SSH applications
- Can add new SSO applications
- Can add new web applications

## Configuration

First, a new SSO application is created via the ribbon.

![picture new sso application](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_1.png){ loading=lazy }

Various properties for the application can now be defined in the tab that opens. The fields **Window title**, **Application** and **Application path** are not manually filled. This is done via the **Create application** button in the ribbon:

![picture enter application](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_2.png){ loading=lazy }

A crosshair cursor now appears. It enables the actual "mapping" or assignment of the target fields. You can see the field assignment for the user name below using a login to an SQL server as an example. All of the other fields that should be automatically entered are assigned in the same way. The process is always the same. You select the field that needs to be automatically filled and then decide which information should be used to fill it.

![picture create sso application](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_3.png){ loading=lazy }

In parallel to the previous step, all of the already assigned fields will be displayed on the right edge of the screen. In this example, the VMware vSphere Client has a total of 4 assigned fields: IP, user name, password and clicking the button to subsequently confirm the login.

![picture creating steps](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_4.png){ loading=lazy }

!!! note "Graphical recognition:"
    The graphical recognition function provides additional protection. It can be used to define other factors for the SSO. An area is defined that then serves as the output for the comparison (e.g. for login masks with an image). In order to activate the graphical recognition function, click on the eye at the top right after assigning the fields! The area that will serve as the output point is then marked.

Once you have assigned all of the fields, you can exit the application process using the enter button. The fields "Window title", "Application" and "Application path" mentioned at the beginning are now automatically filled.

![picture application properties](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_5.png){ loading=lazy }

As you can see, the .exe file is directly referenced. If the application is saved to the same storage location for all users, it can then also be accessed by all other users.

## Linking records with applications

In the [Passwords module]({{url.placeholder}}), the newly created application can now be directly linked. To do this, mark the record to be linked and open the "Connect application" menu in the "Start" tab via the ribbon. This will open a list of all the available applications. It is now possible here to link to the previously created application "VMware".

![picture connect application](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_6.png){ loading=lazy }

When the link has been established, this application can then be directly started via the ribbon in future. Pressing the button directly opens the linked application.

![picture start application](/assets/en/client_modules/applications/learning_the_applications/learning_the_applications_7.png){ loading=lazy }

!!! danger "Be Aware"
    With respect to permissions, applications are subject to the same rules as for passwords, roles or documents. It is possible to separately define which group of users is permitted to use each application.
