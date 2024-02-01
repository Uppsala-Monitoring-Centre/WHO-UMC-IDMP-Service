### PhPID Request
    
In this section it is described how the WHO-UMC IDMP service (API) is used to request a new global PhPID represented by a AdministrableProductDefinition (APD) in an asynchronous way. 

The reason for using an asynchronous request model is that the process for generating PhPIDs includes a manual data validation step which can not be done instantly.

The asynchronous nature of the request is achieved by using a FHIR Task. In the Task a MedicinalProoductDefinition (MPD) resource, for which a PhPID should be generated, is used as input, placed in the contained section of the Task. The (MPD) contains information identifying the MedicinalProduct, such as: name, market authorization holder, local MPID etc. The ingredient(s), form and strength of the MPD is modelled using Ingredient resources.

Upon a successful request, a PhPID is generated and an (APD) resource representing it will be available, referenced in the output section of the Task.    

### Workflow

1. Create a MedicinalProductDefinition (MPD) resource together with Ingredient (I) resource(s) with the information available for PhPID generation. The resources should only have ids for internal references in the Task. If available, local Medicinal Product Identifiers (MPID)s should be present in the identifier section of the (MPD). Substances should (if possible) be referenced using the Globasl Substance Identifiers (GSID)s. Also add a contact for the (MPD) using an Organization (O) resource. 
2. Place the (MPD), (I) amd (O) resources in the contained section of a Task resource and reference them in the input section.
3. POST the Task to the maintenance organization. Before POSTing the Task it should be validated using a Task/$validate POST call.
4. GET the status of the Task by using the 'ContentLocation' header returned from the POST call. It is also possible to get the status by requesting the Task given the id of the Task returned as response of the POST.
5. When finished the GET call will display status 'completed' and the body of the get will contain the Task with a reference to the generated AdministrableProductDefinition (APD) resource (including a PhPID) in the output section.
6. The generated (APD) will be available as a resolvable url.

<figure>
  <img style="width: 80%; height: 80%;padding-top:0;padding-bottom:0;float:center" src="PhPIDRequestWF.png" alt="PhPID request workflow"/>
  <figcaption>PhPID request workflow</figcaption>
</figure>

