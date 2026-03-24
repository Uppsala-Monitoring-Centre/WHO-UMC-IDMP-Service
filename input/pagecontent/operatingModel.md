### Operating model

Following is a picture of the operating model for requesting and publishing PhPIDs. 

<img src="OperatingModel.png" alt="The PhPID operating model"/>
<br clear="all"/>

#### Operations
1. A requester in need for a global PhPID sends a request containing the medicinal product information.
2. The sent in request is validated by the maintenance organisation against GIDWG Business rules.
3. The validated and harmonized dose form attributes, substance and strength information are used as input string in the generation of PhPIDs.
4. The requester receives the gloabl PhPIDs, levels 1-4, for their medicinal product.
5. The generated PhPIDs are stored in the PhPID repository.

#### Corresponding FHIR operations 
1. A FHIR [Task](StructureDefinition-Task-phpid-req.html) is used to request a new global PhPID. Necessary information to complete the request is embedded in the contains section of the Task. See [PhPID request model](phpIdRequest.html) for details.  
2. While validation of the request is ongoing the status of the Task indicates in progress.  
3. The Task is validated and the status transits to _completed_. 
4. The global PhPID that has been mapped to the product is published in the output section of the Task and is thereafter available as an [AdministrableProductDefinition](StructureDefinition-AdministrableProductDefinition-pub.html) resource. The PhPID can be newly generated or an already existing PhPID which is mapped also to other products.
5. Searching for an existing PhPID can be done using standard search functionality. Search and filter parameters are available in the Capability Statement. 

#### Task status
Initial status of a submitted Task is "_received_". Next, while the Task awaits the manual validation of the submitted data, or when validation is ongoing, the Task status is set to "_in-progress_" up until the validation is done. When validation is finished the status will be "_completed_", meaning that the Task has received a response in form of a PhPID and a reference to the product in UMC's drug dictionary. A task can also get status "_rejected_" meaning that the task will not be validated, usually due to lacking or erroneus data in the submitted request.