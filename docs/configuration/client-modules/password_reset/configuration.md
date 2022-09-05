# Configuration

## Creating a Password Reset

New Password Resets can be directly added via the ribbon or the keyboard shortcut "Ctrl + N" in the Password Reset module. With regards to setting permissions, a Password Reset behaves in precisely the same way as every other object. It is thus possible to precisely control which users can view and use which Password Resets.

## Configuration Guide

The configuration of a new Password Reset comprises four steps. All of the necessary conditions and variables for the configuration are defined in the following areas: "General", "Trigger", "Scripts" and "Linked passwords".

![picture password reset settings](/assets/en/client_modules/password_reset/configuration/configuration_1.png){ loading=lazy }

### General

- **Name**: Designation for the Password Reset
- **Responsible user**: All completed Password Resets are also recorded within {{about.product}} (logbook,…). To ensure these steps can be allocated to a user, a user who is registered in {{about.product}} is selected in the field "Responsible user".

### Trigger

Triggers describe the conditions that need to be fulfilled so that a Password Reset is carried out. There are a total of three possible triggers available:

- Reset the password x minutes after the password has been viewed
- Reset the password when it has not been changed for x days
- Reset the password when it has been expired for x days

At least one trigger must be activated so that the Password Reset is activated. Deactivating all triggers is equivalent to deactivating the Password Reset. All three triggers can be activated and deactivated independently of one another. Only one selection can be made in each of the three categories.

!!! hint
    A separate system task within {{about.product}} checks every minute whether a trigger applies.

### Scripts

A new dialogue appears after the selection in which the type of system "to be reset2 can be defined.

![picture new script](/assets/en/client_modules/password_reset/configuration/configuration_2.png){ loading=lazy }

- **Script type**: You select here from the possible script types.
- **Password**: The credentials for the record that will ultimately carry out the Password Reset.
The required information is specifically requested in each case. For example, if the reset is for an MSSQL user, the MSSQL instance and the port used needs to be entered.

The functions and configuration process are described in detail in the section Scripts.

!!! hint
    It is not possible to create a Password Reset without an associated script.

### Linked passwords

All records that should be reset with the Password Reset according to the selected trigger are listed under “Linked passwords”. Multiple objects can be entered. The linked Password Reset is also visible in the footer of the reading pane once it has been successfully configured.

![picture add script](/assets/en/client_modules/password_reset/configuration/configuration_2.png){ loading=lazy }
