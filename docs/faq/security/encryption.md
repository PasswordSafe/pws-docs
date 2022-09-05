# Encryption

## Used Algorithms

Safety has always been one of the most basic considerations when designing software. All other requirements were assessed according to how safe they were. Parallel to the development phase, the theoretical concepts of external security companies were examined in terms of feasibility, as well as compliance with IT security standards. Prototypes have been ultimately developed on the basis of these findings, which form the blueprint for the current {{about.product}} version 8. The following encryption techniques and algorithms are currently in use:

- AES 256
- PBKDF2 with 100,000 iterations for the formation of user hashes
- PBKDF2 with 1000 iterations for the hashes of the passwords within the database
- RSA for private and public key methods

!!! note
    All encryption algorithms used by {{about.product}} are FIPS compliant.

## Applied cryptographic procedures

Applied cryptographic procedures
The container encryption of the passwords is based on the aforementioned algorithms. Each container has its own randomly generated salt. Each password, user, and role has its own key pair. When releases are granted for users and roles, the passwords within the database are hierarchically encrypted. {{about.product}} also uses the following cryptographic methods to achieve maximum security:

To integrate an AD, you can choose between an end-to-end encryption (E2EE – the safest mode) and the Master Key
The server key is protected using the hardware security module (HSM) via PKCS#11
Brute force protection for logging in by means of automatic blocking of the requesting client
Certificate protection when using applications
Certificate request for client/server connection You may use your own certificate authority (CA) as an option.
Latest version of the Secure Sockets Layer (SSL)
Passwords are only encrypted and transported to the client when they have been explicitly requested in advance. More…

!!! danger "Be aware"
    Only secrets are encrypted. Metadata is not encrypted to ensure search speed. Secrets are usually passwords. However, the customer can decide what kind of data they are. Note that Secrets cannot be searched for.
