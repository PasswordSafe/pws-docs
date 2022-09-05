# Notifications

## What are notifications?

With the notification system, you are always up-to-date on all events that you consider important. Almost all modules allow users to configure notifications. All configured messages are only created for the currently registered {{about.product}} user. It is not possible to create a notification for another user. Each user can and should define himself which passwords, which triggers as well as changes are important and informative for him. [The configuration of visibility is explained in a similar way to the other modules in one place..]({{url.placeholder}})

![picture notification module](/assets/en/client_modules/notifications/notifications_1.png){ loading=lazy }

!!! hint
    The reading pane is deactivated in this module by default. It can be activated in the "Display" tab in the ribbon.

## Module-specific ribbon functions

There are also some ribbon functionalities that are exclusively available for the notification module. In particular, the function **Forward important notifications to email addresses** enables administrators and users to maintain control and transparency independent of the location.

![picture notification ribbon](/assets/en/client_modules/notifications/notifications_2.png){ loading=lazy }

### Mark notifications as read

The two buttons on the ribbon enable you to mark notifications as read/unread. In particular, the filter criterion available in this context (see following screenshot) enables fast sorting according to current and also historical notifications.

![picture notification filter](/assets/en/client_modules/notifications/notifications_3.png){ loading=lazy }

It is possible to mark the notifications as read/unread via the ribbon and also via the context menu that is accessed using the right mouse button. If the corresponding setting has been activated, opening a notification will also mean that it is marked as read.

### Email forwarding

Various forwarding rules can be defined via the ribbon. A rule defines when a notification should be forwarded to email.

![picture forwarding rule](/assets/en/client_modules/notifications/notifications_4.png){ loading=lazy }

In this example, all notifications that match the stated object type (passwords, forms, roles) and notification type (when edited, when deleted) are forwarded. In addition, it is also possible to filter according to the notification type (=event type).

!!! hint
    The prerequisite for the forwarding of notifications is that an email address has been saved for the logged-in user under account in the main menu

## Manual configuration of notifications

Irrespective of the selected module, permissions can be configured manually for objects. The following dialogue can be opened via the ribbon in the "Actions" tab:

![picture notification settings](/assets/en/client_modules/notifications/notifications_5.png){ loading=lazy }

- **Notification**: Definition for the trigger
- **Value**: Defines whether a notification should be created for the previously defined trigger. In the example for the "Apple" record, this only occurs when the record is edited.
- **Event type**: The event type for the generated notifications can be either "Info", "Warning" or "Error". This information can also be used e.g. as an additional filter criterion.

In contrast to previous editions, it is best to configure the notifications manually. This ensures that a notification is really only triggered for relevant events.

## Other triggers for notifications

As well as manually configurable notifications, there are other triggers in {{about.product}} which will result in notifications.

- [Seal]({{url.placeholder}}): Requests to release sealed records are handled via the notification system
- [System tasks]({{url.placeholder}}): If reports are automatically created via the system tasks, these are also made available in the form of a notification. If this type of notification is selected, it can be directly opened via the corresponding button that appears on the ribbon.

![picture open report](/assets/en/client_modules/notifications/notifications_6.png){ loading=lazy }

## Automatic deletion of old notifications

If desired, notifications can be automatically cleaned up. This option can be configured on the **AdminClient**. Further information can be found in the section [Managing databases]({{url.placeholder}}).
