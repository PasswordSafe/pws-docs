# Client configuration

The performance is only dependent on the client to a small extent. The user’s settings are imported directly from the MSSQL database.

!!! hint
    You can use a software deployment to rollout {{about.product}}. We provide an MSI installer package for that purpose.

 We recommend the following min. configuration, to ensure smooth operation:

- Microsoft Windows version 7 (latest patch level)
- At least 2 x CPU
- Min. 2 GB RAM
- Min. 40 GB hard disk space
- .net library 4.8.0 or newer
- If RDP connections are to be established, it is necessary to have installed RDP 8.1 at least

## Terminal server

The client can also be operated on a Windows Terminal Server. For the automatic sign-on, the SSO Agent must be installed as a service on the terminal server.

## Firewall / Ports

- Port 11011 TCP for communication with the application server (outgoing)
- Port 52120 TCP with the add-on (outgoing)
