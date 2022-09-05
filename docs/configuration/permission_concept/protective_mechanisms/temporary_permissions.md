# Temporary permissions

## What are temporary permissions?

So far, we have covered permissions that were valid for an unlimited period. However, a permission can also be granted in advance with a time restriction. Examples are users who stay in the company for a limited time, such as interns or trainees.

## Configuration

When configuring the [permissions for records]({{url.placeholder}}), you can specify a temporary release for each role. The start date as well as the end date is selected here. You can start the configuration using the **Extras** area in the ribbon.

![picture rights template](/assets/en/permission/protective_mechanisms/temporary_permissions/temporary_permissions.png){ loading=lazy }

In this example, the role "trainees" was granted the read permission to a data set for two weeks.

## Color scheme

The colors in the "time period" column provide information on the current status of the granted permissions:

- **Brown:**{style='color: brown'} The temporary permission is configured but is still inactive. The selected time period is still in the future.
- **Green:**{style='color: green'} The temporary permission is active.
- **Red:**{style='color: red'} The time period for the temporary permissions has already expired.

!!! hint
    Temporary permissions can also be assigned to multiple roles and users at the same time. You can select multiple users and roles as usual with Ctrl/Shift + left mouse button!

## Special features of the authorization system

Due to their very nature, temporary permissions leave lots of potential for incorrect configurations. Conceivable constellations include a situation when the only user with all rights only has temporary permissions. When these permissions expire, there is no longer any user with full permissions. To prevent this happening, users with temporary permissions are handled differently.

!!! danger "Be Aware"
    There must always be one user who has the “authorize” right to a record, who does ^^not^^ only have temporary permissions.
