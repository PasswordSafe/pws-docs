# End-to-end encryption

## Maximum encryption

The Active Directory profile with active end-to-end encryption currently offers **maximum security**. Only users, organizational units and roles are imported. The permissions and the hierarchical relationship between the individual objects needs to be separately configured in {{about.product}}. The advantage offered by end-to-end encryption is that Active Directory is “defused” as a possible insecure gateway. In Master Key mode, users who control Active Directory receive de facto complete access to all passwords because resetting a Windows user name enables users to log in under another person’s name. Active Directory is thus the leading system. **Using an active E2EE connection, users require their own password for {{about.product}}**. There is thus no access to users’ data via Active Directory.

## Relevant rights

The following options are required to add new profiles.

### User right

- Can add new Active Directory profiles
- Display organizational structure module
- Display role module

## Creating profiles

The process for creating a new [profile]({{url.placeholder}}) is started via the icon "manage profiles" on the ribbon.

![picture create profile](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_1.png){ loading=lazy }

!!! hint
    "End-to-end" needs to be set in the "Encryption" field

A **user** is required to access the AD. The user should be formatted as follows: ^^Domain\user^^. It must have access to the AD.

- The relevant **user password** (domain password) is required for the user mentioned above
- **Direct search** is recommended for very large domain trees. The representation of the tree structure is omitted, elements can only be found and selected via the search.
- The **filter** can be used to directly specify an AD path as an entry point via an LDAP query.
- Various security options – so-called AuthenticationTypes Enumeration – can be selected for the connection of the AD to {{about.product}}:
  - Secure
  - SecureSocketsLayer
  - ReadOnlyServer
  - Signing
  - Sealing

## Import

The import is started directly in the ribbon. A wizard guides the user through the entire operation.

![picture import button](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_2.png){ loading=lazy }

## Organizational structure

First, an organizational unit is selected for the import. If there are no organizational units in the database yet, as in this example, the data is imported into the **main organizational unit**.

![picture ad import](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_3.png){ loading=lazy }

## Active Directory objects

In the next step, select the relevant profile that should be used for the import. Then, select the organizational units and/or users for the import. A search is available for this purpose.

![picture ad objects](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_4.png){ loading=lazy }

It can be seen that the organizational units **Jupiter** and **Contoso** contain items to be imported. The organizational units themselves will not be imported. The check next to the group **Accounting** indicates that the group itself will be imported along with some of its sub-elements.

There are different symbols which indicate the elements to be imported.

- The element itself and all possible sub-elements will be imported
- The element itself and some of its sub-elements will be imported
- The element will not be imported; however, it contains elements that will be imported

A context menu that is accessed using the right mouse button is available within the list that provides helpful functions for selecting the individual elements.

![picture select sub-objects](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_5.png){ loading=lazy }

- Select sub-objects selects all sub-objects that are located directly below the current object
- Deselect sub-objects removes tags from all sub-objects that are located directly below the current object
- Reset all items removes all previously set tags
- Display element details lists all information that is available for the current element

In the lower area you can specify whether the users just selected for import should be created as **Light** or **Full** users.

!!! hint
    If individual users, organizational units, or roles cannot be selected for import, they have already been imported via another profile

## Summary

The last page summarizes which objects will be edited and in what form. It specifies the names of the elements along with their descriptions. The **Status** column specifies whether the object is added, updated, or disabled. The last column specifies the organizational unit into which the element is imported. The number of objects is added together at the bottom.

![picture summary](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_6.png){ loading=lazy }

!!! hint
    Depending on the amount of data, it may take several minutes to create the summary.

## Importing

The import itself is carried out by the server in the background. The individual elements then appear in the list one by one. This may take some time, depending on the amount of import data. If the import is terminated, you will receive a confirmation.

![picture task complete](/assets/en/client_modules/organizational_structures/active_directory_link/end_to_end_encryption/end_to_end_encryption_7.png){ loading=lazy }

!!! hint
    As end-to-end encryption is retained in this mode, the server does not receive a key to match already imported users with the AD. There is thus no synchronization with the AD. Similarly, no memberships can be imported. After the import, users must be manually assigned to the appropriate organizational units and roles.

## Imported users and organizational units

In end-to-end mode, the imported users behave like local users. The users can/must be edited manually in {{about.product}}. The affiliations to organizational units and/or roles must be adapted manually.

## Rights

The rights will be issued as follows during the import or synchronization.

### New objects

||User|Groups|Roles|
|---|-----|-----|----|
|Are rights inherited from the OU?|If no preset has been saved|If no preset has been saved|No|
|Are rights applied from a preset?|If a preset has been saved|If a preset has been saved|No|
|Is the "add" right issued?|No|Yes|No|
|Who receives the rights key?|Imported users and all with the "authorize" right|All|Imported roles and all with the "authorize" right|

### Changed objects

||User|Groups|Roles|
|---|-----|-----|----|
|Are rights inherited from the OU?|No|No|No|
|Are rights applied from a preset?|No|No|No|
|Is the "add" right issued?|No|No|No|
|Who receives the rights key?|None|None|None|

!!! hint
    In end-to-end mode, **no role affiliations** are issued during the import or synchronization.

## Logging into {{about.product}}

Users imported in this mode can ^^not^^ login with the domain password. Rather, a password is generated during import. This password is sent to the users by e-mail. If a user has not entered an e-mail address, the user name is entered as the password. The initial password can be changed by the administrator or the user himself at the first login.
