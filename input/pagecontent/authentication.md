 <blockquote class="stu-note">
    <p>This part of the specification is only on a DRAFT level and what is described here is only available in the PoC FHIR server.</p>
  </blockquote>


### Introduction
The PhPIDs (APD) and GSIDs (SD) are publicly available. Requesting new PhPIDs and GSIDs requires authentication and the access to detailed drug information through the MedicinalProductDefinition API requires a special license. It is only possible to request the status of, or delete, a request (Task) for tasks generated using the same authentication credentials. Deletion of a request is only allowed as long as its status is not completed. 

In addition all Subscription handling (create, update, delete and retrieve) requires authentication. Subscriptions on Task events will only apply to Tasks created by the same account as the Subscription.  

It is possible to search APDs using MPD attributes, like MPD identifier, without a license to retrieve the actual MPD.

Some information/attributes on the SD that is not within the public domain also requires a special license. Without a license the information will be hidden from the SD resource.

<img src="Authentication.png" alt="An overview of access to resources"/>
<br clear="all"/>

### Authentication process
To authenticate when using for example the `Task` and `Subscription` API an http header should be supplied named `Ocp-Apim-Subscription-Key`. 
In the PoC version of the API any guid on the form `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx` can be used. However, it is important to always use the same guid for one user since the guid will identify the "owner" of the `Task`.

#### Requesting access 
This process has yet to be developed.

### Abbreviations
- SD - SubstanceDefinition 
- APD - AdministrableProductDefinition
- MPD - MedicinalProductDefinition