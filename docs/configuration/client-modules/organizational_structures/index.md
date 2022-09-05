# Organizational structure

## What are organizational structures?

The storage of passwords or documents always takes place according to the defined organizational structures. The module enables complex structures to be defined, which later form the basis for the systematic storage of data. It is often possible to define them on the basis of already existing organization diagrams for the company or department. It is also possible to use other criteria, such as the function / activity performed, as the basis for creating hierarchies. It is always up to the customer themselves to decide which structure is most useful for the purpose of the application.

![picture organizational structure module](/assets/en/client_modules/organizational_structures/organizational_structures_1.png){ loading=lazy }

## Relevant rights

The following options are required for adding new organizational structures.

### User rights

- Can add new organizational units
- Display organizational structure module

## Module-specific ribbon functions

The operation of the ribbon differs fundamentally in a couple of aspects to how it works in other modules. The following section will focus on only those elements of the ribbon that differ. The remaining actions have already be explained for the password module.

![picture organizational structure ribbon](/assets/en/client_modules/organizational_structures/organizational_structures_2.png){ loading=lazy }

- **New organizational unit/user**: New organizational units or new users can be added via the ribbon, the keyboard shortcut "CTRL + N" or also the context menu that is accessed using the right mouse button. Due to its complexity, there is a separate section for this function: [New organizational structures / new users]({{url.placeholder}})
- **Drag & Drop**: If this option has been activated, it is possible to move users or organizational units in list view via drag & drop
- **Permissions**: The configuration of permissions within the organizational structure is important both for the administration of the structure and also as the basis for the permissions in accordance with [inheritance from organizational structures]({{url.placeholder}}). The benefits of [predefining rights]({{url.placeholder}}) are explained in a [separate section]({{url.placeholder}}).
- **Settings**: The settings can be configured for both users and also organizational units. More information on [user settings…]({{url.placeholder}})
- **Active Directory**: The connection to Active Directory (available from the Enterprise Edition upwards) is explained in a [dedicated section]({{url.placeholder}})
- **Azure Active Directory**: The connection to Azure Active Directory (available from the Enterprise Edition upwards) is explained in a [dedicated section]({{url.placeholder}})
- **Multi Factor authentication**: Additional security during login is provided through positive authentication based on another factor. [More on this subject…]({{url.placeholder}})
- **Reset password**: Administrators can reset the passwords with which users log in to {{about.product}} to a defined value. Naturally, this is only possible if the connection to [Active Directory]({{url.placeholder}}) is configured via [end-to-end encryption]({{url.placeholder}}). In the alternative [Master Key mode]({{url.placeholder}}), the authentication is linked to the correct entry of the AD password.

!!! hint
    To reset a user password, membership for the user is a prerequisite.

The example below shows the configuration of a user where only the user themselves is a member.

![picture organizational structure permission](/assets/en/client_modules/organizational_structures/organizational_structures_3.png){ loading=lazy }

This configuration means that the user password cannot be reset by administrators. The disadvantage is that if the password is lost there is no technical solution for "resetting" the password in the system.

!!! danger "Be Aware"
    It is ^^not^^ recommended to configure the permissions so that only the user themselves has membership. No other interventions can be made if the password is then lost.

## Adding local organizational units

Both users and also organizational units themselves can be added as usual via the ribbon (alternatively via Ctrl + N or via the context menu). These processes are supported by various wizards. The example below shows the creation of a new organizational unit:

### Create organizational unit

![picture create organizational structure](/assets/en/client_modules/organizational_structures/organizational_structures_4.png){ loading=lazy }

- **Allocated organizational unit**: If the new object is defined as a **main organizational unit**, it is not allocated to an existing organizational unit
- **Rights template group**: If an already existing organizational unit was selected under "allocated organizational unit", you can select one of the existing rights template groups.

!!! hint
    The organizational unit marked in list view will be used as a default. This applies to the fields "allocated organizational unit" and also "rights template".

### Create role

![picture organizational structure create role](/assets/en/client_modules/organizational_structures/organizational_structures_5.png){ loading=lazy }

When creating a new organizational unit, the second tab in the wizard enables you to directly create a new role. This role will not only be created but also given "read permission" to the newly created organizational unit.

### Configuring rights

![picture organizational structure configuring rights](/assets/en/client_modules/organizational_structures/organizational_structures_6.png){ loading=lazy }

The third tab of the wizard allows you to define the permissions for the newly created organizational unit. If an allocated organizational unit or a rights template group was defined in the first tab, the new organizational unit will inherit its permissions. These permissions can be adapted if desired.

!!! hint
    The **organizational structure** module is based on the WebClient module of the same name. Both modules have a different scope and design but are almost identical to use.
