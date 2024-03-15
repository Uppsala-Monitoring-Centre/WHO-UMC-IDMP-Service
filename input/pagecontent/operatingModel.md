### Operating model

Following is a picture of the operating model for requesting and publishing PhPIDs. The process is similar for GSIDs. 

<img src="OperatingModel.png" alt="The PhPID operating model"/>
<br clear="all"/>

#### Operations
1. A requester in need for a PhPID sends a request containing the product information.
2. The sent in request is validated by pharmacists in the maintenance organisation.
3. The validated and harmonized dose form, substance and strength information is used as input string in the generation of PhPIDs.
4. The requester receives the PhPIDs, levels 1-4, for their medicinal product.
5. The generated PhPIDs are stored in the PhPID repository.

#### Corresponding FHIR operations 
1. A FHIR [Task](StructureDefinition-Task-who-php-phpid.html) is used to request a new PhPID where necessary information to complete the request is embedded in the contains section of the Task. See [PhPID request model](phpIdRequest.html) for details.  
2. While validating the request the status of the Task indicates to progress.  
3. The Task is _ready_ and transits to _completed_ via _in-progress_. 
4. The new (or already existing) PhPID is published in the output section of the Task and is thereafter publically available as an [AdministrativeProductDefinition](StructureDefinition-AdministrableProductDefinition-who-php.html) resource.
5. Searching for an existing PhPID can be done using standard search functionality. Search and filter parameters is available in the Capability Statement.