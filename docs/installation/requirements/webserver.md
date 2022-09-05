# Webserver

In principle, the {{about.product}} WebClient can be installed on all current web servers. For this purpose, a corresponding SSL certificate is required for the https connection. The WebClient should ideally have the same version as the {{about.product}} server.

!!! note
    As every web server is individually installed and configured, detailed knowledge of the system being used is required. Our partners would be pleased to carry out the installation via consulting.

The WebClient requires the following ports:

- Port 443 HTTPS to address the web server from the client (inbound).
- Port 11016 for communication with the application server (outgoing).
- Port 11018 for real-time updating (outgoing).

!!! danger "Important!"
    The connection between the browser and the web server must be protected by an SSL certificate. It is strongly recommended that you purchase a certificate for this purpose from a service provider e.g.: Thawte. If you have not purchased an official certificate, please ensure that your certificate is sufficiently trusted. Otherwise, the certificate will be displayed in red and shown as insecure in the browser.

## Supported webservers

The {{about.product}} WebClient has been successfully tested on the following systems:

### IIS

- Min. Version 7
- URL Rewrite module version 2.1 or higher
- Application Request Routing module version 3.0 or higher
- Websocket Protocol

### Apache

- Min. Version 2.4
- mod_rewrite module
- mod_proxy module
- mod_ssl module
- mod_proxy_http module

### Nginx

Min. Version 1.13
