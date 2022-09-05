# SDK / API

The Enterprise Plus Edition features a API: This interface can be used to "address {{about.product}} externally" in order to, for example, read data for other programs. The API can only be accessed via our wrappers (SDK) using C# and JavaScript.

In the JavaScript version of the API, all enums can be found under the global object "PsrApiEnums".

## Requirements and download

The SDK is exclusively available in the Enterprise Plus Edition and can be downloaded from the Customer Information System.

## Using the API

The central object is "PsrApi". It contains various "managers" that contain the entire business logic. First a "PsrApi" object must be created. The only transfer parameter of this class is the endpoint of the {{about.product}} WebServices. If the WebClient is in use, `https://webclient-url/api` can be used as the endpoint. Otherwise the {{about.product}} Server, i.e. `app-server01:11016`, must be used directly.

=== "JavaScript"

    ``` javascript
    const psrApi = new PsrApi('https://webclient-url/api')
    ```

=== "C#"

    ``` c#
    var psrApi = new PsrApi('https://webclient-url/api');
    ```

## Login

If you do not log in to the system in advance, it is not possible to use the API. The first parameter for the login method is the desired database, followed by the user name and password. It is important to note that all methods for running the API that initiate a server call are implemented asynchronously. “Task” objects are returned in C# and “Promise” objects are returned in JavaScript.

=== "JavaScript"

    ``` javascript
    await psrApi.authenticationManager.login('database', 'username', 'password')
    ```

=== "C#"

    ``` c#
    await psrApi.AuthenticationManager.Login('database', 'username', 'password');
    ```

All methods for the API can then be used. Checkout the [examples](examples/login/)! :rocket:

## Technical documentation

You can find the complete technical documentation for the SDK [here]({{url.sdk}}).
