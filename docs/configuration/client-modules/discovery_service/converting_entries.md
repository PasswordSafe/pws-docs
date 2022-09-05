# Converting entries

An important element for the **Discovery Service** is the **Conversion Wizard**. It processes the discovered **entries** and then creates corresponding **passwords** and **Password Resets**.

The **Conversion Wizard** is started in the Start ribbon and it is also possible to switch here to the **System Tasks**.

![picture ribbon](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_1.png){ loading=lazy }

After the **Discovery Service Task** has been successfully executed, the entries are available in the **Discovery Service**. Further processing of the entries is then carried out using the **Conversion Wizard**.
For processing in the **Conversion Wizard**, the network is scanned for the following types:

1. Discovered type: Service
2. Discovered type: Active Directory user
3. Discovered type: User account

!! hint
    Only those **services are recorded** to which at least one **AD user** or **user account** can be assigned! Only **AD users** and **user accounts** to which **at least one service** can be assigned are recorded.

## Execution

In the **Discovery Service** table, the user selects the entries for which he wants to add a **Password Reset** or **password**. The user then clicks on the **Conversion Wizard** and the **Discovery Service Conversion Wizard** opens for further editing.

![picture data selection](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_2.png){ loading=lazy }

1. A **Discovery Service Task** first needs to be selected. This determines the context in which the new data will be created (for a new **Password Reset**, the **password for the domain administrator** for the task will be used as the executing user. In addition, only those **Discovery Service Task entries** that are also discovered by the entered **Discovery Service Task** will be used for the conversion).
2. The discovered entries will be displayed in this column with the **services** for which the user has been entered.
3. This column shows the **discovered type** for the entry.
4. This column shows already existing passwords in {{about.product}} that match the discovered **Active Directory user** or **user account**. It is possible to select here which password can be used when creating a **Password Reset** (it is then used as the only password linked to the Password Reset). Alternatively, these passwords can also be newly created.

!!! hint
    Logically, **every root node** corresponds to **one user** and all of its associated data (e.g. services). A **Password Reset** is created later for **every user** and its associated data.

The following image shows the options **add new password** or retain **existing password**.

![picture associated passwords](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_3.png){ loading=lazy }

In addition, the **organizational uni** in which the existing password is located is displayed.

## Settings

The **Password Reset** is configured in the **Settings Ribbon**.

![picture password reset setting](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_4.png){ loading=lazy }

The **settings** will be described in more detail below:

1. The organizational unit in which the **Password Reset** should be created is entered here. In addition, a template for the rights inheritance can be entered here.
2. The **responsible user** for the **password** is entered here. A special tag can be set here.
3. Adding a **Password Reset**
    Option 1: **Do you also want to add a Password Reset?** Adds a **Password Reset** If **option 1** is not selected, the following options are not displayed.
4. Setting for executing a **Password Reset**
    Option 2: **(Execute Password Resets immediately after they are created)** means that the **Password Reset** will be executed as soon as you click on **Finish**.
5. The **responsible user for the Password Reset** is entered here.
6. Various **triggers for the Password Reset** can be selected here.

!!! danger "Be Aware"
    After clicking on **Finish**, the **Password Resets** will be **immediately executed** and the **passwords changed!**. This also applies to **Windows passwords!**

If option 1: **Do you also want to add a Password Reset?** is not selected, *steps 4, 5 and 6 are not displayed for configuration.

![picture password reset option](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_5.png){ loading=lazy }

!!! hint
    After clicking on **Finish**, one or more **passwords will be created** but **no corresponding Password Resets will be created!**

## Assignment (Active Directory user)

In the **Assignment (Active Directory user)** Ribbon, the discovered data for the **Discovery Service entries** is transferred to a password form.

The following images shows the **Assignment (Active Directory user)** Ribbon

![picture assignment for active directory user](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_6.png){ loading=lazy }

### Description

1. An **Existing form** can be selected or a **New form** with names can be added
2. The **discovered properties** are displayed here
3. The **properties** are *assigned to the form fields here

### "Existing form" selected

![picture existing form](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_7.png){ loading=lazy }

### Procedure

1. An **Existing form** is selected here
2. The **assignment** to the fields is carried out here
    Important assignments are **Type: General** and **Type: Password Reset**. An amendment can be carried out here

### "New form" selected

![picture new form](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_8.png){ loading=lazy }

### Converting Procedure

1. A name for the **New form** needs to be entered here
2. The discovered entries are **automatically** assigned as standard
    Important assignments are **Type: General** and **Type: Password Reset**. An amendment can be carried out here

### Summary

A brief overview of the actions that will be carried out with the added configuration is displayed in the **Summary** Ribbon. These actions will then be carried out if you click on **Finish**.

![picture summary](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_9.png){ loading=lazy }

## Confirmation prompt

An important aspect of {{about.product}} V8 is the **security** of passwords on systems. In the **Discovery Service**, a **security measures** is thus triggered at the **last step** for creating **Password Resets**.
If the option **Execute Password Resets immediately after they are created** is used in the configuration, the **selected passwords** are immediately changed after clicking on **Finish**.

!!! danger "Be Aware"
    **If you are not paying careful attention, this could have inconvenient consequences.**

**Security level 1:**
An **Important note** is displayed in the **Summary** after clicking on **Finish**.

!!! danger "Be Aware"
    **Please observe the note and read it through carefully!**

An **Overview** of which actions will be carried out is displayed for the user together with this note. The user can then still decide to **Cancel** the process.
If you click on **OK**, an **additional confirmation warning** will be displayed.

![picture important note](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_10.png){ loading=lazy }

**Security level 2:**

Another **confirmation prompt** highlights that it is important to understand what you are about to do. It will no longer be possible to reverse the actions afterwards!

!!! danger "Be Aware"
    **Last chance to cancel the execution!**

![picture security warning](/assets/en/client_modules/discovery_service/converting_entries/converting_entries_11.png){ loading=lazy }

After **entering the displayed number** and **confirming with OK**, the process is **executed immediately** and the **Password Resets** are carried out and the **associated passwords changed**.
