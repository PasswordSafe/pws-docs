# Form field permissions

## What are form field permissions?

The [authorization concept]({{url.placeholder}}) allows separate permissions to be set for each object. These objects could be records, forms or users. {{about.product}} goes one step further in this context. Every single form field for a record can also be granted with separate permissions. It is thus possible to grant different permissions for the password field of a record than are set for the other fields.

## Relevant rights

The following options are required to view "inherit" and "overwrite" icons.

### User right

- Can overwrite permissions
- Can inherit permissions

## Configuration

The associated form field permissions for the marked record can be opened via the ribbon using the drop-down menu under "Permissions".

![picture form field permissions](/assets/en/client_modules/passwords/form_field_permissions/form_field_permissions_1.png){ loading=lazy }

The window that opens allows you to select the relevant form field for which you want to grant permissions. The following example focuses on the password field.

![picture permissions for password](/assets/en/client_modules/passwords/form_field_permissions/form_field_permissions_2.png){ loading=lazy }

The permissions configured here now exclusively apply to the password field. The other form fields remain unaffected.

Inheritance of permissions within records
Changes to the permissions for a record are automatically inherited by all form fields by default. If you open the permissions for a record via the ribbon, the configured rights are then valid for all form fields. This mechanism can be switched on and off using the two buttons "Inherit" and "Overwrite" in the ribbon.

![picture inherit permissions](/assets/en/client_modules/passwords/form_field_permissions/form_field_permissions_3.png){ loading=lazy }

In this way, you have the option of deciding whether changes to the permissions for a record are automatically inherited or not by all available underlying form fields. It is only necessary to remove the tick from the "Inherit" field.
