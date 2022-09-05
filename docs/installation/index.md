# Installation

The following pages will provide you with all the information how to install the different {{about.product}} components.

## System landscape

The following overview presents a basic production {{about.product}} system landscape. Version 8 allows the use of several database servers across all sites. These are then synchronized using Microsoft SQL server tools. Any number of application servers can be made available for the client connection. This ensures load distribution, and allows work without significant latency. This technology offers enormous performance advantages, particularly in the case of installations that are spread across worldwide locations.

![Image title](/assets/en/installation/system_landscape.png){ loading=lazy }

## Client (presentation layer)

The client layer handles the representation of all data and functions, which are provided by the application server.

## Application server (business logic)

The application server is entirely responsible for the control of the business logic. This server only ever delivers the data for which the corresponding permissions are available. The multi-tier architecture described at the beginning allows the use of several application servers and ensures efficient load distribution.

## Database server (data storage)

{{about.product}} uses Microsoft SQL Server to store data due to its widespread use, and its ability to ensure high-performance access even in large and geographically scattered environments. Smaller installations may also use the free SQL Express version.

## Conclusion

At least three servers are thus recommended:

- Database server (MSSQL)
- Application server ({{about.product}} services)
- Web server (IIS, NginX, Apache 2)

!!! danger "Recommendation"
    For databases in a production system, we recommend using a fail-safe cluster. Microsoft SQL Server can replicate the data to a different data centre, e.g via WAN. We also recommend providing a Windows server for each function. Separating the systems makes it easier to expand and scale the system landscape at a later point. However, it is not absolutely necessary to separate the systems. Accordingly, all of the components can also be installed on one server in the case of smaller installations or test environments.

## Firewall rules / Ports

### MSSQL Server

- Port 1433 TCP for communication with application server (incoming)

### Application server

- Port 443 HTTPS for connection to the {{about.company}} license server (outgoing)
- Port 11011 TCP for communication with clients or web server IIS (incoming)
- Port 11014 TCP for the backup service (usually does not need to be unlocked)
- Port 11016 TCP for the Web services (incoming; only when using the WebClient)
- Port 11018 TCP for real-time update (incoming)
- Port 1433 TCP for communication with SQL Server (outgoing)

### Webserver (WebClient)

- Port 443 HTTPS to access the webserver from the client (incoming)
- Port 11016 for communication to the application server (outgoing)
- Port 11018 for the real-time update (outgoing)

### Client

- Port 11011 TCP for communication with the application server (outgoing)
- Port 52120 TCP with the add-on (outgoing)
