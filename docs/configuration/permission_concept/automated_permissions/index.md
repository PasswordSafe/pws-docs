# Automated setting of permissions

## Reusing permissions

{{about.product}} generally differentiates between multiple methods for setting permissions:

1. Manual setting of permissions
2. Inheritance of permissions within organizational structures
3. Using predefined rights

    - In the manual setting of permissions, the desired permissions are directly configured for each record. Automatic processes and inheritance are **not** used in this case.
    - Both the use of predefined rights and also the inheritance from organizational structures are based on the **automated reuse** of already granted permissions according to previously defined rules.

The following diagram deals with the question: **How do users or roles receive the intended permissions?**

![manual vs automated settings](/assets/en/permission/automated-setting-of-permissions/automated-setting-of-permissions-1.png){ loading=lazy }

!!! note
    Inheritance from organizational structures is defined by default in the system. This can be configured in the settings. The relevant setting is “Inherit permissions for new objects (without permission template)”. “Further info…”:{{url.placeholder}}
