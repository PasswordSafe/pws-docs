# Configuration

## The Discovery Service module

When this module is opened in {{about.product}}, **there are no entries displayed in the Discovery Service** module at the beginning. The entries need to be generated using a [System Task]({{url.placeholder}}).

![picture discovery](/assets/en/client_modules/discovery_service/configuration/configuration_1.png){ loading=lazy }

Once a **System Task** has been completed, the data discovered during the search is listed in a table:

![picture discovery service](/assets/en/client_modules/discovery_service/configuration/configuration_2.png){ loading=lazy }

!!! hint
    The information can be grouped together using the column editor.

## Network Scan

A **Discovery Service Task** is used to add a new [Discovery Service]({{url.placeholder}}) and is then correspondingly configured for a **Network Scan**. Depending on the configuration of the **Network Scan**, the following types are discovered:

- Service accounts
- Active Directory users
- User accounts

## Configuration of a Discovery Service Task

To collect data for the **Discovery Service**, the **Discovery Service Task** needs to be correspondingly configured for a **Network Scan**.

### General and overview

The following image shows a newly added **Discovery Service Task**.

![picture discovery service task](/assets/en/client_modules/discovery_service/configuration/configuration_3.png){ loading=lazy }

1. Shows information about the **Discovery Service Task**.
2. In the **General** section, the name of the **Discovery Service Task** is entered (optionally with a description).
    The Status is always set to **Activated** by default but it can also be set to **Deactivated** in the configuration.
3. The **Overview** shows the activities of the **Discovery Service Task**:
    Last run: shows the date it was last run.
    Next run: shows the date of the next run.

## Task settings

Password:

1. User name field: Type
2. Password field: Type
Multiple password field —> field 1. is used.

This section is used for special entries for the **Discovery Service Task**. After it has been finished, the **Network Scan** scans the **network** according to these guidelines.

![picture discovery service task settings](/assets/en/client_modules/discovery_service/configuration/configuration_4.png){ loading=lazy }

1. **Password** and **Computer scan variants**: The required password must already have been issued and it requires corresponding rights for the domain.
    Active Directory computer: Only those computers that are in Active Directory are scanned (there is also the option of using it individually or pinging the network).
    Ping network: A network filter for the configuration of the network is displayed.
2. **Network filter**: This defines the network to be scanned: either using an IP range or an IP network address.
    Range: The start IP address and end IP address for the range on the network are entered here
    Network: The network address and corresponding subnet mask for the network are entered here
3. **Domain**: The domain to be used for the **network scan** is entered here.
    In addition, you can select that only computers in the entered domain are scanned. A name resolution should work for this purpose.
4. **Scan configuration**:
    The Network Scan for the configuration of Active Directory is defined here. Select from either **Active Directory user of services** or **Active Directory user**.
    The second section defines the scan configuration for the local computer. Select from either Local user of services or *Local user*.

!!! danger "Be Aware"
    The system executing the scan – on which the AdminClient is installed – is not scanned!

## Interval / Executing server / Tags

This section is used to enter information about the start of the task and other additional information.

![picture discovery service interval](/assets/en/client_modules/discovery_service/configuration/configuration_5.png){ loading=lazy }

1. **Interval**: The interval at which the **Discovery Service Task** should be executed is defined here. The default setting is hourly, one year after adding the **Discovery Service Task**. The interval can be adjusted in minutes or set to be executed only once (optionally with an end date).
2. **Executing server (optional)**: Servers with an AdminClient can be entered here that will be used to execute the Discovery Service Task if the main server crashes. The Discovery Service Task is then automatically taken over and executed by the accessible servers on the list. The list is searched from top to bottom to find an accessible server.
3. **Tags**: The use of tags is described in more detail in the section [tag manager]({{url.placeholder}}). A special tag can be entered here for the **Discovery Service Task**.

After the **Discovery Service Task** has been configured, a connection test is performed when the configuration is saved. The system then indicates whether the configuration is correct or faulty. Depending on the message, the **Discovery Service Task** may need to be amended.

!!! danger "Be Aware"
    The **default setting** for the **Discovery Service Task** after it has been saved is **Activated!** It will **immediately actively** scan the network for data. This data is **read** but not amended!
