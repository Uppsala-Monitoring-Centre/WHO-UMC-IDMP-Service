### Substance Request
    
In this section it is described how the WHO-UMC IDMP service (API) is used to request a new SubstanceDefinition representing a GSID in an asynchronous way. 

The reason for using an asynchronous request model is that the process for generating a GSID includes a manual data validation step which can not be  done instantly.

The asynchronous nature of the request is achieved by using a FHIR Task. In the Task a draft SubstanceDefinition resource without an Identifier is used as input, placed in the contained section of the Task.

Upon a successful request, a GSID is generated and a new SubstanceDefinition resource representing it will be available, referenced in the output section of the Task.    

### Workflow

1. Create a 'draft' SubstanceDefinition (SD) resource with the information available for GSID generation. The resource should only have an id for internal references in the Task and no Identifier since it is the Identifier (the GSID) that will be generated.
2. Place the (SD) resource in the contained section of a Task resource.
3. POST the Task to the maintenance organization. Before POSTing the Task it should be validated using a Task/$validate POST call
4. GET the status of the Task by using the 'ContentLocation' header returned from the POST call. It is also possible to get the status by requesting the Task given the id of the Task returned as response of the POST.
Repeat step (4) until the status is Completed. Not to overload the server a request throttling approach should be used starting from five seconds up to one hour between the requests. 
5. When finished the GET call will display status 'completed' and the body of the get will contain the Task with a reference to the generated SubstanceDefinition resource (including a GSID) in the output section.
6. The generated (SD) will be available as a resolvable url.

<figure>
  <img style="padding-top:0;padding-bottom:0;float:center" src="SubstanceRequestWF.png" alt="Substance request workflow"/>
  <figcaption>Substance request workflow</figcaption>
</figure>
