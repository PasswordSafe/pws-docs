# Predefining rights

## What are predefined rights?

[Setting permissions](/permission_concept/manual_setting_of_permissions/) can be carried out separately for every record. Although this method enables you to very closely control every intended permission structure, it is not really efficient. On the one hand, there is too much configuration work involved, while on the other hand, there is a danger that people who should also receive permissions to access data are forgotten. In addition, many users should not even have the right to set permissions. “Predefining rights” is a suitable method to simplify the permissions and reduce error rates by using automated processes. This page covers the configuration of predefined rights, please also refer to the sections [Working with predefined rights]({{url.placeholder}}) and their [Scope of validity]({{url.placeholder}}).

## Organizational structures as a basis

[Organizational structures]({{url.placeholder}}) can be very useful in many areas in {{about.product}}. In this example, they provide the basic framework for the automated granting of rights. In the broadest sense, these organizational structures should always be entered in accordance with existing departments in a company. The following example specifically focuses on an IT department. The following 3 hierarchies ([roles]({{url.placeholder}})) have been defined within this IT department:

- **IT employee**
- **IT manager**
- **Administrator**

## Predefine rights

In general, a senior employee is granted more extensive rights than those granted to a trainee. This hierarchy and the associated permission structure can be predefined. In the [organizational structure]({{url.placeholder}}) module, we now select those OUs (departments) for which rights should be predefined and select *predefine rights” in the ribbon.

![picture button predefined rights](/assets/en/permission/predefined_rights/predefined-rights-1.png){ loading=lazy }

- **Creating the first template group:** A new window will appear after clicking on the icon for adding a new template group (green arrow) in which a meaningful name for the template group should be entered.

![picture add template](/assets/en/permission/predefined_rights/predefined-rights-2.png){ loading=lazy }

Roles and users can now be added to this template via the ribbon or through the context menu (right mouse click). This was already completed in the example. The role **IT employee** only has the "read permission", the **IT manager** also has the "write permission" and the capability of managing permissions. **Administrators** possess all available permissions. Configuration of the permission structures is explained in the [appropriate section]({{url.placeholder}}).

![picture example permissions](/assets/en/permission/predefined_rights/predefined-rights-3.png){ loading=lazy }

## Adding other template groups

It is also possible to configure several different right templates within one department. This may be necessary e.g. if there are several areas of competency within one department which should each receive different permissions. Alongside the **IT general** area, the template groups **Exchange** and **Firewall** have also been defined below.

![picture example preset](/assets/en/permission/predefined_rights/predefined-rights-4.png){ loading=lazy }

A **default template group** can be defined directly next to the drop-down menu for selecting the template group (green arrow). This is always pre-configured when you select “IT” as the OU to save records.

## Issuing tags for predefining rights

In the same way that permissions are defined within right templates, it is also possible to automatically set **tags**. Their configuration is carried out in the same way as [issuing tags for records]({{url.placeholder}}).

![picture preset and tags](/assets/en/permission/predefined_rights/predefined-rights-5.png){ loading=lazy }

This process ensures that a special tag is automatically issued when using a certain template group. Example cases can be found in the [relevant section]({{url.placeholder}}).
