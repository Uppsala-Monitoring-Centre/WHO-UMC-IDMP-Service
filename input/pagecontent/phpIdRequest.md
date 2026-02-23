### Introduction
    
In this section it is described how the UMC IDMP API is used to request a new global PhPID represented by a `AdministrableProductDefinition` (APD) in an asynchronous way. 

The reason for using an asynchronous request model is that the process for generating PhPIDs includes a manual data validation step which can not be done instantly.

The asynchronous nature of the request is achieved by using a FHIR Task. In the Task a `MedicinalProductDefinition` (MPD) resource, for which a PhPID should be generated, is used as input, placed in the contained section of the Task. The (MPD) contains information identifying the Medicinal Product, such as: name, marketing authorization holder, local MPID etc. The ingredient(s), form and strength of the MPD is modelled using Ingredient resources.

Upon a successful request, a PhPID is generated and an (APD) resource representing it will be available, referenced in the output section of the Task. The Product ID (WHODrugID) of the WHODrug record corresponding to the provided MPD will also be available in the output.   

### Workflow

1. Create a `MedicinalProductDefinition` (MPD) resource together with `Ingredient` (I) resource(s) with the information available for PhPID generation. The resources should only have ids for internal references in the `Task`. If available, local Medicinal Product Identifiers (MPID)s should be present in the identifier section of the (MPD). Substances can (if possible) be referenced using the Global Substance Identifiers (GSID)s or simply by a substance name, preferably in english. Also add a Marketing Authorization Holder for the (MPD) using a `RegulatedAuthorization` (RA) resource that points out an `Organization` (O) resource as holder. 
2. Place the (MPD), (I), (RA) and (O) resources in the contained section of a Task resource and reference them in the input section specifying the appropriate type using the TaskInputType code system.
3. POST the `Task` to the maintenance organization. Before POSTing the `Task` it should be validated using a `Task/$validate` `POST` call.
4. GET the status of the Task by using the 'Content-Location' header returned from the POST call. It is also possible to get the status by requesting the Task given the id of the Task returned as response of the `POST`.
Repeat step (4) until the status is completed. To not overload the server an exponential back-off approach should be used, starting from four seconds up to 1024 seconds between the requests. 
5. When finished the `GET` call will display status 'completed' and the body of the GET will contain the `Task` with a reference to the generated `AdministrableProductDefinition` (APD) resource (including a PhPID) in the output section as well as a WHODrugID as an identifier.
6. The generated (APD) will be available as a resolvable url.


<figure>
  <img style="padding-top:0;padding-bottom:0;float:center" src="PhPIDRequestWF.png" alt="PhPID request workflow"/>
  <figcaption>PhPID request workflow</figcaption>
</figure>

