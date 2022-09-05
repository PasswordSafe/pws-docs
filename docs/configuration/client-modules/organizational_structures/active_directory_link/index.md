# Active Directory link

## What are active directory profiles?

The connection to Active Directory (AD) is established via so-called AD profiles. These profiles contain all of the information relevant for establishing a connection to AD and enable imports/synchronization of users, organizational units or roles. To connect to various different ADs, it is naturally also possible to create multiple AD profiles.

## Two import modes in comparison

When importing from Active Directory, {{about.product}} distinguishes between two modes, which differ significantly and are explained in separate sections.

- End-to-end encryption
- Master Key mode

In principle, the two variants differ by the presence of the encryption mentioned above. In the solution with active end-to-end encryption (**E2EE**), the process may be less convenient (see table) but there is a huge benefit in terms of security. In Master Key mode, a master key is created on the server that has full permissions for all users, organizational units and roles. This represents an additional attack vector, which does not exist in end-to-end mode. In return, however, in Master Key mode, users can be updated via synchronization with the Active Directory. Memberships of organizational units and roles are also imported. In the more secure end-to-end mode, this synchronization of the changes must be carried out manually.

!!! hint
    It is technically possible to create several profiles with different modes. However, this is not recommended for the sake of clarity.

|Comparison of the modes|End-to-end mode|Master key mode
|----------------------|--------------|-----------------|
|End-to-end encryption*|+|-|
|Importing user information|+|+|
|Importing assigned roles|-|+|
|Importing roles to organizational units|-|+|
|Synchronizing user information|-|+|
|Synchronizing assigned roles|-|+|
|Synchronizing roles with organizational units|-|+|
|User can be edited in {{about.product}}|+|-|
|Organization unit can be edited in {{about.product}}|+|-|
|Roles can be edited in {{about.product}}|+|-|
|Password can be edited in {{about.product}}|+|-|
|Login with domain password|-|+|
|{{about.product}} is the leading system|+|-|
|Active Directory is the leading system|-|+|
|Autologin|+|+

As can be seen **E2EE offers the highest level of security**. The aim is merely to import users, organizational units and roles. Those must be administered and configured in {{about.product}}. In contrast, a connection in **Master Key mode offers the highest level of convenience**. It imports not only users, organizational units and roles but also their links and assignments. Synchronization with Active Directory is possible – **The AD is used as the leading system**.

## Users, groups and roles

When importing or synchronizing from Active Directory, users are also added as users in {{about.product}}. {{about.product}} also uses the organizational units as such.

In order for {{about.product}} to be quickly integrated into the given infrastructure, roles can also be directly imported from the Active Directory. Namely Active Directory Groups are used to password-safe roles.

!!! hint
    Groups in groups Memberships, which may be present in the Active Directory, will not be displayed within {{about.product}}. Both groups are imported as roles, but independent and not linked in any way.

!!! danger "Be Aware"
    If Master Key mode has been selected for the Active Directory profile, the AD is the leading system. In this mode, roles that have been imported cannot be changed locally in {{about.product}}.

- End-to-end encryption
- Master Key mode
