# Protective mechanisms

## What are protective mechanisms?

The primary goal of {{about.product}} is to ensure data security at all times. The [authorization concept]({{url.placeholder}}) is naturally the most important component when it comes to granting users the intended level of permissions for accessing data. Specifically, this makes it possible to make certain information only available to selected employees. Nevertheless, it is still necessary to have protective mechanisms above and beyond the authorization concept in order to handle complex requirements.

- [Visibility]({{url.placeholder}}) is not separately configured but is instead directly controlled via the authorization concept (read permission). Nevertheless, it represents an important component within the existing protective mechanisms and is why a separate section has been dedicated to this subject.
- By configuring [temporary permissions]({{url.placeholder}}), it is possible to grant users or roles temporary access to data.
- [Password masking]({{url.placeholder}}) enables access to the system without having to reveal the passwords of users. The value of the password remains constantly hidden.
- To link the release of highly sensitive access data to a double-check principle, it is possible to use [seals]({{url.placeholder}}). The configuration of users or roles with the permissions to issue a release is possible down to a granular level and is always adaptable to individual requirements.

The following diagram shows a summary of how the existing protective mechanisms are integrated into the authorization concept.

![picture protective mechanisms diagram](/assets/en/permission/protective_mechanisms/protective_mechanisms.png){ loading=lazy }

In the interplay of the [authorization concept]({{url.placeholder}}) with the protective mechanisms, almost all conceivable scenarios can be depicted. It is worth mentioning again that the authorization concept is already a very effective tool, with limited visibility of passwords and data records. This concept is present everywhere in {{about.product}}, and will be explained in more detail below.

## Visibility as a basic requirement

It should always be noted that **visibility** is always a basic requirement for applying further protective mechanisms. A record that is completely hidden from a user (= no read permission) can naturally not be given any further protective mechanisms.

!!! note
    The visibility of a record is always the basic requirement for applying further protective mechanisms

## Combining multiple protective mechanisms

In principle, there are a diverse range of possibilities for combining the above-mentioned protective mechanisms. Temporary access to a “masked” record is possible just as having a “masked” record which is additionally secured by a double-check principle is also possible. **Nevertheless, it should be noted that temporary permissions in combination with seals always pose a risk.** If releasing a seal requires approval from a person who only possesses or possessed temporary permissions or will only possess them in future, this could naturally conflict with the configured release criteria.

!!! danger "Be Aware"
    The combination of seals and temporary permissions is not recommended if the user with permissions to issue a release has only been given temporary permissions.
