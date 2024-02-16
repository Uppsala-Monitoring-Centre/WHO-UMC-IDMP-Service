### Operating model

Following is picture of the operating model for requesting and publishing PhPIDs and it is basically the same for GSIDs. 

<img src="OperatingModel.png" alt="The PhPID operating model"/>
<br clear="all"/>

#### Operations
1. ToDo 
2. ToDo 
3. ToDo 
4. ToDo 
5. ToDo 

#### Corresponding FHIR operations 
1. A FHIR [StructureDefinition-Task-who-php-phpid.html](Task) is used to request a new PhPID where necessary information to complete the request is embedded in the contains section of the Task. See <a href="phpIdRequest.html">PhPID request model</a> for detasils.  
2. While valitating the request the the status of the Task indicates to progress.  
3. The Task is _ready_ and transits to _completed_ via _in-progress_. 
4. The new (or already existing) PhPID is published in the output section of the Task and is thereafter publically available as an <a href="StructureDefinition-AdministrableProductDefinition-who-php.html">AdministrativeProductDefinition</a> resource.
5. Searching for an existing PhPID can be done using standard search functionality. Available searhc and filter parameters is available in the Capability Statement.