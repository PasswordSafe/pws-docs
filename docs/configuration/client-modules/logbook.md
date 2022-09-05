# Logbook

## What is a logbook?

{{about.product}} logs all user interactions. These entries can be viewed and filtered via the logbook. The logbook records which user has made exactly what changes. This module is (theoretically) classified as uncritical. This is because the employee only has access to those logbook entries to which he is actually entitled.

![picture logbook module](/assets/en/client_modules/logbook/logbook_1.png){ loading=lazy }

## Relevant rights

The following options are required:

### User right

- Display logbook module

## Use of the filter in the logbook

You can also use the filter in the logbook. This enables you to limit the number of displayed elements based on the defined criteria. In the following example, the user is searching for logbook entries relating to the object type “Password” that also match the event criteria "Change". In short: The entries are being filtered based on changes to passwords.

![picture logbook entries password change](/assets/en/client_modules/logbook/logbook_2.png){ loading=lazy }

## Grouping in the logbook

This list can also be grouped together by dragging and dropping column headers – see the following grouping of the columns for **computer user**. The filtered results now show all changes to passwords carried out by the computer user "administrator".

![picture grouping of logbook entries](/assets/en/client_modules/logbook/logbook_3.png){ loading=lazy }

## Revision-safe archiving

In {{about.product}}, an uncompromising method is used when handling the logbook: Every change of state is recorded and saved in the MSSQL database. There are no plans to allow triggers for logbook entries to be selectively defined. It is only by using this process that changes are completed in a traceable and audit-proof manner to prevent falsification.

!!! hint
    If desired, the logbook can be automatically cleaned up. This option can be configured on the AdminClient. Further information can be found in the section [Managing databases]({{url.placeholder}}).

## Transferring to a Syslog server

The logbook can also be completely transferred to a Syslog server. Further information on this subject can be found in the section [Syslog]({{url.placeholder}}).
