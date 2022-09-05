# Working with predefined rights

## Using predefined rights when creating passwords

[After you have pre-configured the rights](/permission_concept/predefining_rights/), you can then use them to create new records. Proceed here as follows:

- Select the password module
- “New password” via the ribbon
- Select a form

In the next window to appear, the organizational unit “IT” and the template group “Exchange” are selected.

![picture predefined rights](/assets/en/permission/predefined_rights/working_with_predefined_rights/working_with_predefined_rights_1.png){ loading=lazy }

Here is the underlying rights template as a comparison:

![picture predefined rights example](/assets/en/permission/predefined_rights/working_with_predefined_rights/working_with_predefined_rights_2.png){ loading=lazy }

The relationship between them is obvious. It can be immediately seen that by selecting the organizational unit “IT” based on the rights configured in the rights template, permissions are granted for the roles “IT management” and also “Administrators”. **The underlying tags “IT” and “Exchange” are also set.**

## Preview of the permissions to be set

When using rights templates, the permissions to be granted can be very quickly classified via a **color table**. The actual permissions can also be viewed as usual via the [ribbon]({{url.placeholder}}). The following color key is used with the associated permissions:

| **Color** |**Permission**|
|-----------|-------------|
|Green|Read|
|Yellow|Write|
|Orange|Delete|
|Red|Authorize|

Other rights also exist that are, however, not separately indicated by a color. The overview in the [ribbon]({{url.placeholder}}) can be used to see whether the “move”, “export” and “print” rights are set or not. The permissions for the selected role/user are always displayed – in this case for the role “IT management”.

![picture predefined rights permissions](/assets/en/permission/predefined_rights/working_with_predefined_rights/working_with_predefined_rights_3.png){ loading=lazy }

## Conclusion

The [manual setting of permissions](/permission_concept/manual_setting_of_permissions/) enables the configuration of rights for both existing and also new records. The option of [predefining rights](/permission_concept/predefining_rights/) represents a very efficient alternative. Instead of having to separately grant permissions for every record, a “preset” is defined once for each organizational structure. Once this has been done, it is sufficient in future to merely select the organizational structure when creating a record. The permissions are then set automatically. This process is particularly advantageous for those users who should not set their permissions themselves.

![picture predefined rights diagram](/assets/en/permission/predefined_rights/working_with_predefined_rights/working_with_predefined_rights_4.png){ loading=lazy }

!!! danger "Be Aware"
    The configuration of permissions can be carried out manually or automatically as described. If you want to change previously set permissions later, this has to be done manually. Retrospectively defining rights is not possible.
