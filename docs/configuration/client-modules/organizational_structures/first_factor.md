# First factor

## What is meant by first factor?

It is a process that regulates access to our system.

## Requirements

With the user setting **Edit first factor** you have the possibility to define another factor for authentication than the standard password.

![picture authentication settings](/assets/en/client_modules/organizational_structures/first_factor/first_factor_1.png){ loading=lazy }

## Factors

### Smartcard (only on FullClient)

The configuration is done via the user setting **First factor**.

![picture smartcard setting](/assets/en/client_modules/organizational_structures/first_factor/first_factor_2.png){ loading=lazy }

!!! hint
    This option is only valid for users in master key mode

!!! danger "Be Aware"
    The smartcard logon tries to determine whether the certificate belongs to the user to be logged on based on the applicant in the smartcard certificate. This is done using regex, the default regex `^{username}[.@\\/-_:]({domain})$` or `^({domain})[.@\\/-_:]({username})$` is applied to the applicant. In this case, `{username}` is replaced with the user to be registered and `{domain}` is replaced with the domain in the AD profile in the regex and if the regex query is positive, the user is registered. If the format of your applicant in your certificates is not compatible with these two regex queries, you must set a custom regex query in the Admin Client. Please note that `{username}` for username and `{domain}` for the AD domain SHOULD be present in the regex query. If the domain must be explicitly specified, it must be written in capital letters.

In addition, the smartcard certificate must of course also be valid on the server!

## Fido2 (only at the WebClient)

## Requirement

For Fido2 it is mandatory that [SMTP]({{url.placeholder}}) is configured. In addition, an e-mail address must be stored for the AD users.

Furthermore, the URL of the WebClient must be stored in the Admin Client:

![picture enter webclient url](/assets/en/client_modules/organizational_structures/first_factor/first_factor_3.png){ loading=lazy }

### Configuration

The configuration is done via the user setting **First Factor**.

![picture fido2 setting](/assets/en/client_modules/organizational_structures/first_factor/first_factor_4.png){ loading=lazy }

As soon as an AD user logs on to the WebClient, he gets the following prompt:

![picture instruction mail](/assets/en/client_modules/organizational_structures/first_factor/first_factor_5.png){ loading=lazy }

In the email box of the corresponding user the further configuration takes place:

![picture configure fido2](/assets/en/client_modules/organizational_structures/first_factor/first_factor_6.png){ loading=lazy }
