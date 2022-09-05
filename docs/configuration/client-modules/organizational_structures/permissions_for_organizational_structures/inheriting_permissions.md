# Inheriting permissions

## What is inherited in organizational structures?

If you open the permissions for an organizational structure, the currently configured permissions will be visible. In the following example, there are a total of four roles with varying permissions for the organizational structure.

![picture button inherit and overwrite](/assets/en/client_modules/organizational_structures/permissions_for_organizational_structures/inheriting_permissions/inheriting_permissions_1.png){ loading=lazy }

## Relevant rights

The following options are required to view "**inherit**" and "**overwrite**" icons.

### User right

- Can overwrite permissions
- Can inherit permissions

The two highlighted options are now available on the ribbon.

- **Inherit**: This means that all of the configurations defined in the current permissions mask are inherited by underlying organizational structures when it is saved. The permissions are added to existing ones
- **Overwrite**: This means that all of the configurations defined are applied to underlying organizational structures when it is saved. The previous permissions are lost.

Both mechanisms are protected by a confirmation prompt. If both "inherit" and also "overwrite" are selected, "overwrite" is considered the overriding function.

!!! danger "Be Aware"
    Both mechanisms are ^^not^^ protected by user rights. The **authorize** right for the organizational structure is required to activate the inheritance or overwrite functions.
