# Seals

## What are seals?

Passwords are selectively made available to the different user groups by means of the authorization concept. Nevertheless, there are many scenarios in which the ability to view and use a record should be linked to a release issued in advance. In this context, the seal is an effective protective mechanism. This multi-eye principle protects passwords by securing them with granular release mechanisms. If you want to see a password, this must be requested and released. The release can also be temporary.

## Relevant rights

The following option is required to add a seal.

## User right

- Can add seal

## Required permissions

Firstly, the user must have the **authorize permission** for the record in order to create seals. The read permission to all users and roles that are contained in the seal is also required. The exact configuration of password masking and permissions for records is described in detail in the [Authorization concept section]({{url.placeholder}}).

## What exactly is sealed?

Technically speaking, the password itself is not sealed. It is the permission to see a password field that is protected by a seal. This allows for the most sensitive configurations, in which one group can use the password without restrictions, but the same password is sealed for other users. The wizard assists users in applying seals, as well as in future maintenance.

!!! danger "Be Aware"
    The complete data set is never sealed! Only the permission to view a password is protected by a seal.

!!! danger "Be Aware"
    Only records that are protected with a password can be sealed!

## Seal wizard

All seal configurations are performed in the wizard. Both the application of new seals as well as the processing and removing are possible. The current state of a seal can also be viewed in an overview, which is accessible via the button in the ribbon. When the seal wizard is opened via the ribbon, the wizard appears in the case of unsealed data sets, which runs in **four steps** through the configuration of the seal.

![picture seal button](/assets/en/permission/protective_mechanisms/seals/seals_1.png){ loading=lazy }

## 1. Apply seal

![picture apply seal](/assets/en/permission/protective_mechanisms/seals/seals_2.png){ loading=lazy }

All objects that are sealed are displayed at the beginning. Depending on the data record, this can be one object, or several. It is also possible to use existing [seal templates]({{url.placeholder}}). Optionally, you can enter a reason for each seal.

## 2. Multi-eye principle

The seal logic is the most basic element of this protective mechanism. Here, you define for which users or roles the record should be sealed or released in the future. All those for whom the record is to be sealed are displayed in red, while all users with the required permissions to issue a release are displayed in blue.

![picture multi-eye principle](/assets/en/permission/protective_mechanisms/seals/seals_3.png){ loading=lazy }

!!! hint
    All users and roles for which the data set is not sealed and which are not authorized for release are displayed in green. These can use the data record independently of the seal.

To avoid having to perform any configuration manually, roles and users are copied directly from the authorizations of the data record. Compare with the "permissions" for the record (can be viewed via the ribbon).

![picture example permissions](/assets/en/permission/protective_mechanisms/seals/seals_4.png){ loading=lazy }

Supervisors should issue the releases for their employees. Therefore, the checkbox also follows the existing authorizations. The following **scheme** is used:

!!! hint
    All users and roles that have the **authorize permission** to the record are "authorized to issue a release" for the seal by default. All users and roles that do ^^not^^ have the **authorize permissions** to the record are copied directly into the "Sealed for" column.

Here is a closer look at the permissions of the role **Administrators** on the record:

![picture example multi-eye principle](/assets/en/permission/protective_mechanisms/seals/seals_5.png){ loading=lazy }

## Adjusting the seal logic

Although standard authorizations are used as a basis for the sealing concept, these can be adapted. The number of releases generally required is as configurable as the required number of releases from a role. In the following example, the seal has been extended so that a total of three release authorizations are required in order to release the seal **(Multi-eye principle)**. The role of the administrators has been marked in the mandatory column. This means that it must grant at least one release. In summary: A total of three releases must be made, whereby the group of administrators must grant at least one release.

![picture edit seal](/assets/en/permission/protective_mechanisms/seals/seals_6.png){ loading=lazy }

In order to be not only dependent on existing authorizations on the data set, other users can also be added to the seal. The role accounting under "sealed for" has been added below.

![picture advanced settings](/assets/en/permission/protective_mechanisms/seals/seals_7.png){ loading=lazy }

!!! hint
    When a role or a user is added to a seal, these users also receive permissions on the record according to the authorization granted in the seal. A role that is added under "Sealed for" receives the **Read permission** on the record. When you add authorization permissions, these will include the **Read**, **Write**, **Delete**, and **Authorize** permission.

!!! danger "Be Aware"
    All the roles that were once added to the seal can no longer be removed via the seal logic. This is only possible directly via the authorizations of the data record!

!!! hint
    It is possible to seal records for a user who is also authorized to issue a release. In this constellation, it is important to ensure that at least one other user is authorized to issue a release. In principle, you should never be able to issue a release for yourself.

## 3. Advanced settings

Advanced seal settings allow you to adjust the multi-eye principle. Both the time validity of a release request as well as a granted release can be configured. Multiple break defines whether after the breaking of a seal by a user, other users may still break it.

![picture advanced settings](/assets/en/permission/protective_mechanisms/seals/seals_8.png){ loading=lazy }

## 4. Saving the seal

Before closing the wizard, it is possible to save the configuration for later use in the form of a template. [Seal templates]({{url.placeholder}}) can be optionally provided with a description for the purpose of overview.

![picture save seal](/assets/en/permission/protective_mechanisms/seals/seals_9.png){ loading=lazy }

## Summary

The permissions already present on the data set form the basis for any complex seal configurations. It is freely definable which users have to go through a release mechanism before accessing the password. The roles, which may be granted, are freely definable. An always accessible [seal overview]({{url.placeholder}}) allows all authorized persons to view the current state of the seals. The [section on the release mechanism]({{url.placeholder}}) describes in detail the individual steps, from the initial release request to the final release.

- [Seal overview]({{url.placeholder}})
- [Release mechanism]({{url.placeholder}})
