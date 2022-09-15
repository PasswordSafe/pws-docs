# Manual setting of permissions

## What is the manual setting of permissions for records?

In contrast to the [automatic setting of permissions]({{url.placeholder}}), the manual approach does not utilize any automatic processes. This method of setting permissions is thus carried out separately for every record – this process is not as recommended for newly created data. If you want to work effectively in the long term, the automatic setting of permissions should be used. However, the manual setting of permissions is generally used when editing already existing records.

## Adding additional users with permissions

In the previous section, it was clarified that permissions are granted either directly to the user or to several users grouped in a role. With this knowledge, the permissions can be set manually. In the ["Passwords" module]({{url.placeholder}}), there are three different ways to access the permissions in the list view:

1. Icon in the ribbon
2. Context menu of a data record (right-click)
3. Icon at the right edge of the reading pane

![permissions menu location](/assets/en/permission/manual-setting-of-permissions/manual-setting-of-permissions-1.png){ loading=lazy }

!!! note
    The icon on the right of the reading pane shows the information whether the record is personal or public. In case of personal data records, the user that is logged on is the only one who has permissions!

The author is created with all permissions for the record. As described in the [Permission Concept](/configuration/permission_concept/), you can now add roles and users. 'Right click - Add' inside the userlist or use the ribbon "User and roles" to add a user. The filter helps you to quickly find those users who should be granted permissions for the record in just a few steps.

![add user and role menu](/assets/en/permission/manual-setting-of-permissions/manual-setting-of-permissions-2.png){ loading=lazy }

The search [filter]({{url.placeholder}}) opens in a separate tab and can be configured as usual.

![search filter example](/assets/en/permission/manual-setting-of-permissions/manual-setting-of-permissions-3.png){ loading=lazy }

**Multiple selection** is also enabled. It allows to add several users via the Windows standard Ctrl/Shift + left mouse button.

## Set and remove permissions

By default, all added users or roles receive only the “Read” permission on the record. The “Read” permission at the beginning is sufficient to view the fields of the data record and to use the password. "Write" permission allows you to edit a data record. **The permission “Authorize” is necessary to authorize other users to the record**. This is also a requirement for the [configuration of a seal]({{url.placeholder}}).

![setting all permissions example](/assets/en/permission/manual-setting-of-permissions/manual-setting-of-permissions-4.png){ loading=lazy }

## Transferring permissions

A simple right-click on a user can be used to copy and transfer permission configurations of users or roles to others in the context menu. In this context, the use of permission templates is also very practical. In the “Template” area of ​​the ribbon, you can save configured permissions, including all users, and reuse them for other records.

![preset menu](/assets/en/permission/manual-setting-of-permissions/manual-setting-of-permissions-5.png){ loading=lazy }

The transfer of permissions and their reuse can be an important building block to create and maintain entitlement integrity. This method cannot rule out misconfigurations, but it will minimize the risk significantly. Of course, the correct configuration of these templates is a prerequisite.

## The add permission

The “add" permission holds a special position in the authorization concept. This permission controls whether a user/role is permitted e.g. to create a new record within an organisational structure. Consequently, this permission can only be set in the organisational structure module. [More…]({{url.placeholder}})

## The owner permission

The "owner" permission can be set for a user. This permission is more of **a guarantee**. Once assigned, there is no way to remove the user or role. This is only possible by the user or the role itself, as well as by users with the permission “Is database administrator”.

![owner permission](/assets/en/permission/manual-setting-of-permissions/manual-setting-of-permissions-6.png){ loading=lazy }

The owner permission prevents other users who have the “Authorize” permission from removing someone with the owner permission from the record.

!!! danger "Be Aware"
    The owner permission does not protect a record from being deleted. Any user who has deletion permission can delete the record!
