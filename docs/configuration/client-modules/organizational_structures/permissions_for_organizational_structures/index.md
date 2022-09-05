# Permissions for organizational structures

## Relevance

These permissions primarily define which users/roles have what form of permissions for organizational structures. In addition, there are **two mechanisms** that directly build on the permissions for organizational structures.

1. **Limiting visibility**: It was already explained in the section on [visibility]({{url.placeholder}}) that selectively withholding information is a very effective [protective mechanism]({{url.placeholder}}). Configuration of the visibility is carried out directly when issuing [permissions to organizational structures]({{url.placeholder}}).
2. **Inheriting permissions for records**: [Inheritance from organizational structures]({{url.placeholder}}) is defined as a system standard. This means that there is ^^no^^ difference between the permissions for an organizational structure and the permissions for data that is stored in these organizational structures.

he way in which permissions for organizational structures are designed thus effects the subsequent work with {{about.product}} in many ways. The following diagram describes the above-mentioned interfaces.

![picture authorization diagram](/assets/en/client_modules/organizational_structures/permissions_for_organizational_structures/permissions_for_organizational_structures_1.png){ loading=lazy }

## Permissions

The visibility and also inheritance mechanisms are not considered below. This section exclusively deals with permissions for the actual organizational structure. It deals with which users and roles have what form of permissions for a given organizational structure. Permissions for organizational structures can be defined via the ribbon or also the context menu that is accessed using the right mouse button. A permissions tab appears:

![picture example permissions](/assets/en/client_modules/organizational_structures/permissions_for_organizational_structures/permissions_for_organizational_structures_2.png){ loading=lazy }

!!! hint
    The basic mechanisms for setting permissions is described in detail in the Authorization concept.

!!! danger "Be Aware"
    It is important that the permissions displayed here are interpreted correctly! The example above shows the permissions for the "organizational structure IT".

The user Max Muster possesses all rights to the organizational structure IT and can thus edit, delete and also grant permissions for this structure.

## The add right

The "add" right holds a special position amongst the available rights because it does not refer to the organizational unit itself but rather to data that will be created within it. In general, it is fair to say that to add objects in an organizational unit requires the add right. If a user wants to add a new record to an organizational unit, the user requires the above-mentioned right. In the example above, only the administrator has the required permissions for adding new records. Even the IT manager – who possess all other rights to the organizational structure "IT" – does not have the right to add records.

!!! danger "Be Aware"
    The add right merely describes the right to create objects in an organizational unit.
