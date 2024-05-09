### Introduction
The PhPIDs (APD) and GSIDs (SD) is publicly available. Requesting new PhPIDs and GSIDs requires authentication and the access to detailed drug information through the MedicinalProductDefinition API requires a special license. It is also only possible to request the status of and delete a request (Task) for tasks generated using the same authentication credentials. Deletion of requests are only allowed as long as it is not completed. 

It is possible to search APDs using MPD attributes, like MPD identifier, without a license to retrieve the actual MPD.

Some information/attributes on the SD that is not within the public domain also requires a special license. Without the license the information will be hidden from the SD resource.

<img src="Authentication.png" alt="An overview of access to resources"/>
<br clear="all"/>

### Authentication process
To authenticate when using the `Task` API an http header should be supplied named `Ocp-Apim-Subscription-Key`. In the demo version of the API any guid on the form `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx` can be used. However, it is important to always use the same guid for one user since the guid will identify the "owner" of the `Task`.

#### Requesting access 
TBD

### Abbreviations
- SD - SubstanceDefinition 
- APD - AdministrableProductDefinition
- MPD - MedicinalProductDefinition