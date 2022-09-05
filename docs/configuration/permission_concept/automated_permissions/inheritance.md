# Inheritance from organizational structures

## Organizational structures as a basis

The aim of organizational structures is to reflect the hierarchies and dependencies amongst employees that exist in a company. Permissions are granted to these structures as usual via the ribbon. Further information on this subject can be found in the section [“Permissions for organisational structures”]({{url.placeholder}}). As a specific authorization concept is generally already used within organizational structures, this is also used as the basis for further permissions. This form of inheritance is technically equivalent to granting permissions based on **affiliations to a folder**. When creating a new record, the record receives the permissions in accordance with the defined permissions for the organizational unit.

![explanation of authorization](/assets/en/permission/inheritance/inheritance-1.png){ loading=lazy }

## Relevant user settings

Whether this form of inheritance should be applied is defined via the [settings]({{url.placeholder}}) in the ribbon. It can be configured in more detail using two settings.

!!! danger "Be Aware"
    If a predefined rights exists, this will always overwrite inherited permissions from organizational structures

Inherit permissions for new objects (without rights template)
This setting is relevant for newly created records.

![setting inherit permission](/assets/en/permission/inheritance/inheritance-2.png){ loading=lazy }

The following values can be configured:

Off: Permissions from OUs are not inherited
Organizational unit: When creating new objects, permissions are set in accordance with the defined rights for the target organizational unit. This setting is active by default.
Organizational unit and user: As well as inheriting permissions for organization units, the configured permissions for the user are now also inherited when creating private records.
*If inheritance for the users is also activated, the creation of private records is in itself no longer possible. When creating new records to be saved in the organizational unit for the logged-in user, the permissions for the record are now granted in accordance with the permissions for the user.

Existing passwords inherit changes to the permissions for organizational units

![setting inherit from ou to password](/assets/en/permission/inheritance/inheritance-3.png){ loading=lazy }

This option means that changes to permissions for an organizational unit will be inherited by all passwords for this organizational unit. This setting is active by default. When inheriting permissions, a dialogue will be displayed that offers you the following options:

Increase or reduce permissions: The permissions for the passwords are retained and are only increased or reduced by the change.
Overwrite permissions: The permissions for the passwords are completely overwritten. This means that all permissions for a password are firstly removed and then the new permissions for the organizational unit are inherited.
Cancel inheritance: The permissions are not inherited but are only changed in the organizational unit.
*The permissions are only inherited by existing passwords within the organizational unit. Therefore, the permissions are not inherited downwards throughout the entire structure.

Example case
This example shows the creation of a new record in the organizational structure “marketing”. It is defined in the settings for the stated organizational structure that permissions should be inherited by new objects in accordance with the organizational structure.

The permissions for the organizational unit “marketing” are shown below:

![example permissions](/assets/en/permission/inheritance/inheritance-4.png){ loading=lazy }

A new password is now created in the organizational unit “marketing”.

![picture new password without preset](/assets/en/permission/inheritance/inheritance-5.png){ loading=lazy }

It is important that no preset is defined for this organizational unit. The permissions for the record just created are now shown.

![example permissions](/assets/en/permission/inheritance/inheritance-6.png){ loading=lazy }

## Conclusion

The permissions for the “storage location” are simply used when creating new objects. Two conditions apply here:

The value “organizational unit” must be selected in the settings for the inheritance of permissions
There must be no [predefined right]({{url.placeholder}}) for the affected organizational structure
This process is illustrated in the following diagram:

![picture diagram ](/assets/en/permission/inheritance/inheritance-7.png){ loading=lazy }
