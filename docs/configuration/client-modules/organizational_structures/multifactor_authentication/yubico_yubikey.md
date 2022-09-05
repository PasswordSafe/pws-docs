# Yubico / Yubikey

## Setting up multifactor authentication

### Requesting the Yubico API key

An API key must be requested for configuration. For this purpose, use the following link and enter an e-mail address: [Yubico Website](https://upgrade.yubico.com/getapikey/)

![yubico setup](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_1.png){ loading=lazy }

Yubikey will then generate a **One Time Password**. The Yubikey used must only be touched in the right place.

![yubico stick](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_2.png){ loading=lazy }

The **One Time Password** is entered directly into the corresponding field.

![yubico otp](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_3.png){ loading=lazy }

Once the general terms and conditions have been approved, the API Key can be requested.

![yubico api key](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_4.png){ loading=lazy }

### Configuring the Yubikey API

The actual setting up of the multifactor authentication is carried out on the AdminClient in the **Database** module. First select the required data base; then open the "Features" in the ribbon.
The **Yubico Client ID** and the **Yubico Secret Key** must then be entered and saved.

![yubico setting](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_5.png){ loading=lazy }

The interface is now ready and can be used.

!!! hint
    The HTTPS endpoint [Yubico Verify](https://api.yubico.com/wsapi/2.0/verify) is used for communication with Yubico. Please make sure that the {{about.product}} Server can connect to this endpoint.

## Configuring multifactor authentication for users

Multifactor authentication can be configured in the {{about.product}} client. It can be done by the user themselves in **Backstage** in the [Account]({{url.placeholder}}) menu. It is also possible for the configuration to be applied to other users in the module [organizational units]({{url.placeholder}}). The procedure is identical in both cases. In order to configure the Yubikey, simply select **Yubico One Time Password** and enter the name for the multifactor authentication.

![yubico otp](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_6.png){ loading=lazy }

And then click on save. Now click in the field for the token and create a token using the Yubikey. For **Yubikey NEO**, you only need to touch the touch panel. The same applies to **Yubikey Nano**.

![yubico stick](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_7.png){ loading=lazy }

The token is entered directly into the corresponding field. The multifactor authentication is configured once you’ve clicked on save.

![yubico token](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_8.png){ loading=lazy }

## Logging in with the Yubikey

To login with Multifactor Authentication, the database is first selected and then **User Name** and **Password** are entered and confirmed.

![login window](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_9.png){ loading=lazy }

After the first password authentication, another field for the **One Time Password** is displayed.

![login mfa](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_10.png){ loading=lazy }

Click on the field to highlight it, and enter the **One Time Password** by touching the Yubikeys.

![yubico stick](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_11.png){ loading=lazy }

![mfa token](/assets/en/client_modules/organizational_structures/multifactor_authentication/yubico_yubikey/yubico_yubikey_12.png){ loading=lazy }

The user is now logged on.
