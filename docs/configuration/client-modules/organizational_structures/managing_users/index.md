# Managing users

## How are users managed in {{about.product}}?

The way in which users are managed is highly dependent on whether Active Directory is connected or not. In Master Key mode, Active Directory remains the leading system. Accordingly, users are then also managed in the AD. If {{about.product}} is the leading system, e.g. in end-to-end mode, users are managed in the organizational structures module. More details are provided in the relevant sections.

## Relevant rights

The following options are required to add local users.

### User rights

-Can add new users
-Display organizational structure module

## Adding local users

In general, new users are added in the same way as creating a local organizational unit. Therefore, only the differences will be covered below.

### Creating users

![picture create user](/assets/en/client_modules/organizational_structures/managing_users/managing_users_1.png){ loading=lazy }

-**Allocated roles**: New users can directly be allocated one or more rolls when they are created
-**Change password on next login**: The user will be requested to change their user password on the next login (obligatory)
-**Account is deactivated**: The user is created with the status "deactivated". The account is thus not useable. The write rights for a user can be set/removed with this option. In editing mode, the account can also be deactivated during ongoing operation.
-**Restricted user**: Controlling entities exist in many companies that are only tasked with checking the integrity and hierarchies of various pieces of information with one another but are not required to productively work with the information themselves. This could be a data protection officer or also an administrator in some cases. This would be the case if an administrator was responsible for issuing permissions to other people but should not be able to view the data themselves. The property **restricted user** is used to limit the visibility of the password field. It thus deals with purely administrative users or controlling entities.

!!! hint
    Restricted users cannot view any passwords

### Configuring rights

The second tab of the wizard allows you to define the permissions for the newly created user. If an allocated organizational unit or a rights template group was defined in the first tab, the new user will inherit its permissions. Here, these permissions can be adapted if desired.

### Configuring user rights

Users always receive their user rights via role, which is either user-specific or global (see user rights). If no role is defined in the first tab "Create user", the third tab will thus contain globally defined user rights.

## Importing users

Importing from Active Directory can be carried out in two ways that are described in a separate section.

## User licenses

There are two different types of licenses in **Enterprise Plus**, **FullClient** and **LightClient** licenses. In all other editions you can only purchase FullClient licenses.
Please note that licensed LightClient users are not able to use the FullClient. However, FullClient Users can also switch to the LightClient.

!!! danger "Be Aware"
    For licensing reasons, it is not intended to switch from a FullClient user to a LightClient user!

Our sales team will be happy to answer any questions you may have about licensing.

Display data to which the user is authorized
In order to display the data to which a user is authorized, you must right-click on the corresponding user in the organizational structure. In the context menu that opens, you will find the following options under **displaying data records**:

-Password
-Documents
-Forms
-Rolls
-Uses
-Password Reset
-System Tasks
-Seal templates

!!! hint
    All authorizations for a data record are taken into account, regardless of whether you are authorized by a role or the user.
