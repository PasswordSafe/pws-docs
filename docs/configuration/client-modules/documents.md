# Documents

## What are documents?

Security-critical data does not necessarily need to be in the form of passwords. To enable the uniform and secure storage of data other than passwords, {{about.product}} version 8 offers effective tools for the professional handling of sensitive documents and files. The ability to share documents with others according to their permissions gives you access to the current status of a document and helps avoid redundancies. The documents module is complemented by a sophisticated version management system, which records all versions of a document that were saved in the past and thus enables you to revert back to historical versions. The configuration of visibility is explained in a similar way to the other modules in one place..

![example picture module settings](/assets/en/client_modules/documents/documents_1.png){ loading=lazy }

## Relevant rights

The following option is required to add new documents.

## User right

- Can add new documents

## Adding documents

There are two ways to manage documents and files in {{about.product}} v8:

- **Creating a link**: In this case, only a file that is located locally or on a network drive will be linked. The file itself is not stored in the database. Neither version management nor the traceability of changes in the history are possible.
- **Storing the document in the database**: The file becomes part of the encrypted database. It is saved within the database and can be made available selectively to employees for further processing in the future based on their permissions.

![example picture module settings](/assets/en/client_modules/documents/documents_2.png){ loading=lazy }

## Document selection

When selecting the file to be uploaded, you can either browse your file system via the Explorer view or add objects by drag & drop. The latter gives you the possibility to directly import several documents in one step.

![example picture module settings](/assets/en/client_modules/documents/documents_3.png){ loading=lazy }

## Versioning

The heart of each document management system is the ability to capture and archive changes to documents or files. All versions of a document can be compared with each other and historical versions can be restored if necessary. {{about.product}} provides this functionality via the history in the ribbon, as well as in the footer area for ​​the detailed view of a document. This can be used in the same way as the [password history]({{url.placeholder}}). The interplay between the document-specific event logbook and the history provides a complete list of all information that is relevant to the handling of sensitive data. Version management can be used to restore any historical versions of a document.

!!! hint
    The file size for a **linked document** can only be updated if the document was opened using {{about.product}}.

!!! hint
    If desired, the document history can be automatically cleaned up. This option can be configured on the **AdminClient**. Further information can be found in the section Managing databases.
