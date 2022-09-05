# Permission concept and protective mechanisms

## What is the permission concept?

With {{about.product}} version 8 we provide the right solution to all conceivable demands placed on it with regards to permission management. [Roles]({{url.placeholder}}) are a great way to efficiently manage multiple users without losing the overview. We've created multiple methods to [manually]({{url.placeholder}}) or [automatically]({{url.placeholder}}) manage your permissions.

Alongside the definition of [manual]({{url.placeholder}}) and [automatic]({{url.placeholder}}) setting of permissions, the (optional) setting of [protective mechanisms]({{url.placeholder}}) forms part of the authorization concept. The protective mechanisms are thus downstream of the permissions. The interrelationships between all of these elements are illustrated in the following diagram.

![explanation of the authorization concept](/assets/en/permission/permission_concept_1.png){ loading=lazy }

!!! note
    Applying some form of permissions is **obligatory**.
    Applying a protective mechanism is **optional**.

!!! note
    The configuration of visibility is a technical part of the permissions process. However, this mechanism has a “protective character” and is thus listed under protective mechanisms.

## Basic mechanics of the permission concept

These three pillars are irrevocable and always impact permissions of every type.

### The three pillars of the permission concept

The reproduction of company-specific permission structures can vary greatly in terms of effort. The basic concept is based on only a few rules which always apply without exception. Despite the innumerable individual adjustment screws, these basic rules can be summarized in three essential steps.

### 1. Permissions only for users or roles

If the permission for a data record is to be defined, there are basically only two possibilities:

1. Permission for a **user**
2. Permission for a **role**

A role is technically nothing more than a summary of multiple users with the same permissions. It is, of course, a good idea to manage these roles in accordance with your company’s activities. The role “Administrators” can therefore be provided with more extensive authorizations than, for example, the role “Sales Assistance”. This role-based inheritance allows the organization to maintain the overview in a larger corporate structure as well as a simple procedure when adding new employees. Instead of having to entitle him individually, this is simply added to his role.

![example for permission types](/assets/en/permission/permission_concept_2.png){ loading=lazy }

It is obvious to proceed with the organization of accesses using the concept of roles as a basis and only to grant rights individually to employees in exceptional cases. The unplanned absence of personnel must also be taken into account in such concepts. Working with roles defuses such risks significantly.

!!! note

    Permissions are always granted to only one user or role!

### 2. Membership in roles

The key point is membership in a role. If an employee can use the authorizations according to the roles assigned to him, **he must be a member of the role**. Only members see the records that have been authorized for the role.

![explanation role membership](/assets/en/permission/permission_concept_3.png){ loading=lazy }

!!! note

    A small technical digression into the nature of the encryption can be very helpful with the basic understanding. Each role has a key pair. The first key is used to encrypt data. Access to this information is only possible with the second key. The membership in a role is equivalent to this second key.

### 3. Membership vs. permissions for roles

The admin user in {{about.product}} must pay particular attention to the interplay between users and roles. This dynamics is crucial for understanding the concept of authorization, in order to ensure maximum software adaptability to any corporate structure. The following diagram illustrates this with an example of two users.

![differences between membership and permissions](/assets/en/permission/permission_concept_4.png){ loading=lazy }

- **User 1** is a member of the role, and is therefore authorized for all records that are assigned to the role. However, it has only “read rights” for the role itself. This means, it can see the role, but cannot “Edit, move, or delete” it.
- **User 2** has all rights for the role. It can add additional users to the role by means of “authorize”. The crucial point, however, is that it is not a member of the role. It cannot, therefore, see any records for which the role is authorized.

In practice, the first user would be a classic user that is assigned, for example, to the Sales role by the administrators, and can view the records accordingly. The second user could be one of those administrators. This user has extensive rights for the role. It can edit it, and add users to it. However, it cannot see any data that is assigned to sales. It lacks membership in the role.

!!! note

    As a member of a role, it must have at least the “read” right for the role!

## Specific example and configuration

Similar to the previous section [Membership vs. permissions for roles](#3-membership-vs-permissions-for-roles), the configuration of a role will be illustrated using two users. The configuration is performed in the ["Roles" module]({{url.placeholder}}). By double-clicking on the role “IT-Consultants” in the [list view]({{url.placeholder}}), you can open their detailed view.

![how to add membership](/assets/en/permission/permission_concept_5.png){ loading=lazy }

- The user “Holste” is a member of the role and can, therefore, access those records for [which the role has permissions]({{url.placeholder}}). He has the obligatory read right for the role, which is the basic requirement in order to be a member of the role. Which exact rights it has to the data record is not defined within the role! This is set out in the [following section]({{url.placeholder}}).
- The user “Administrator” has all rights to the role, but is not a member! Thus, it cannot see any records that are authorized for the role. However, it has all rights to the role and can therefore print, assign other users to the role, and delete them.

![explanation of the authorization through a role](/assets/en/permission/permission_concept_6.png){ loading=lazy }

This example clearly shows the advantages of the concept. The complete separation of administrative users from regular users brings significant advantages. Of course, one does not necessarily exclude the other. An administrator can, of course, have full access to the role and also be a member in it! The boundaries between the two often overlap, and can be freely defined in {{about.product}}.
