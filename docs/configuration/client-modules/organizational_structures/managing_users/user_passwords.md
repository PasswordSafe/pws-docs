# User passwords / logging in to client

## User passwords

Depending on the type of user, they will either be allocated their password in {{about.product}} or the login will be carried out using access data for the domain. How the user logs in also differs according to the type of user.

### Differences between users and passwords

- **Local users**
    Local users are those users that were directly created in {{about.product}}. These users must be directly assigned a password when they are created. If local users are migrated from older versions, they receive a randomly generated password that is sent to them via email.

- **AD users in end-to-end mode**
    These users must also be assigned a password in {{about.product}}. A new password will also be issued via email for these users in the case of a possible migration.
- **AD users in Master Key mode**
    These users log in directly with access data for the domain. It is thus not necessary to assign them a password. As these users directly authenticate themselves via Active Directory, the currently saved password in Active Directory is thus always valid. These users can still directly log in using the existing password even after a migration

### Required rights

Various rights are required in order to issue or change user passwords. One prerequisite is the user right **Can display organizational structure module**. **Read** and **write** rights for the user are also required. Finally, membership of the user is required. Normally, the user themselves and the user who created or imported the user have the right to change their password.

![picture password permissions](/assets/en/client_modules/organizational_structures/managing_users/user_passwords/user_passwords_1.png){ loading=lazy }

### Assigning and changing passwords

As already explained, local users are directly assigned their initial password when the user is created. The situation is different for users that are imported in end-to-end mode. They do not possess a password directly after the import and can thus not log in. It is thus necessary to assign passwords after the import.

The passwords can be directly assigned or changed via the ribbon. Naturally, it is also possible to select multiple users if e.g. several imported users should be assigned the same password.

![picture change password](/assets/en/client_modules/organizational_structures/managing_users/user_passwords/user_passwords_2.png){ loading=lazy }

### Change password on next login

Even if several users receive the same initial password, it is sensible to force them to change it to an individual password. There is a corresponding option for this purpose. In the case of **local users**, this can be activated during the creation of the user. In the case of **users in end-to-end mode**, this option is directly activated during import for security reasons. This option is automatically deactivated after the user has successfully logged in and changed the password.

![picture change password options](/assets/en/client_modules/organizational_structures/managing_users/user_passwords/user_passwords_3.png){ loading=lazy }

### Security of passwords

To guarantee that passwords are sufficiently strong, it is recommended that corresponding [password rules]({{url.placeholder}}) are created. It is especially important to ensure here that user names are excluded. The password rule then still needs to be defined as a [user password rule]({{url.placeholder}}).

## Logging in to the database

The process for logging into the database differs depending on the type of user.

### Local user

Local users simply log in using their user name and the assigned password.

![picture local user login](/assets/en/client_modules/organizational_structures/managing_users/user_passwords/user_passwords_4.png){ loading=lazy }

## AD user

If only one domain has been configured, the users from AD can also log in with their user name and password the same as local users. If multiple domains have been configured or there is a local user with the same name, the name of the domain must be entered in front of the user name:

![picture ad user login](/assets/en/client_modules/organizational_structures/managing_users/user_passwords/user_passwords_5.png){ loading=lazy }

The name of the domain must be entered as it is configured in the AD profile under **Domains**. The option **Other domain names** can be used to save other forms of the domain name.

![picture user settings](/assets/en/client_modules/organizational_structures/managing_users/user_passwords/user_passwords_6.png){ loading=lazy }

!!! hint
    The logon to the client is automatically forwarded to the SSO Agent and other clients on the same computer. The same applies to logging on to the SSO Agent.
