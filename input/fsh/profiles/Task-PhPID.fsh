//*******************************
// New request
//*******************************
Profile: TaskGeneratePhPID
Parent: Task
Id: Task-who-php-phpid
Title: "Task PhPID request"
Description: """This profile specified how to use the Task resource to request (via POST) the generation of a PhPID by using the WHO-UMC IDMP FHIR Service"""
* status 1..1 
  * ^short =	"Status of the task should always be 'requested' when a new request"
* status = #requested  
* insert TaskGeneratePhPIDCommon

//*******************************
// Response from status request
//*******************************
Profile: TaskGeneratePhPIDStatus
Parent: Task
Id: Task-who-php-phpid-status
Title: "Task PhPID request status"
Description: """This profile specified how to use the Task resource to request status of a previously sent request"""
* id 1..1
* status 1..1
  * ^short =	"Status of the task"
* insert TaskGeneratePhPIDCommon

* output 0..5
  * type from http://who-umc.org/idmp/ValueSet/phpid-task-output-type (required)
  * value[x] only Reference 
  //* CodeableReference only Reference (AdministrableProductDefinitionWhoPhP or MedicinalProductDefinitionWhoPhP)

//*******************************
// Common
//*******************************
RuleSet: TaskGeneratePhPIDCommon
* identifier 0..
  * ^short = "Identifier assigned by the requestor to track the request."
* instantiatesUri ^short = "Link to the definiton of the task"
* basedOn // check if this should be sued for tracking the request or if we should say not used
* businessStatus ^short = "business-specific state" // check if useful
// CHECK IF IT IS A FIXED VALUE OR A VALUE SET BINDING
* intent = http://hl7.org/fhir/request-intent#proposal 
* priority ^short = "Task priority" // check if this is needed
* status from VsRequestStatus (required)
* code 1..1 
* code = task-request-code#phpid-request

* authoredOn 1..
* lastModified 1..

* contained 4..*
  * ^short = "Resources, according to 'input', used in PhPID generation."
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.type value"

* input contains MPD 1..1 MS and ING 1..* MS and ORG 1..1 MS and REGAUTH 1..1 MS
* input[MPD].type from VsPhPIDTaskInputTypes (required)
* input[MPD].type = TaskInputTypes#mpd-request-resource
* input[MPD].value[x] only Reference
* input[MPD].valueReference only Reference (MedicinalProductDefinitionWhoPhPRequest)

* input[ING].type from VsPhPIDTaskInputTypes (required)
* input[ING].type = TaskInputTypes#ingredient-request-resource
* input[ING].value[x] only Reference
* input[ING].valueReference only Reference (IngredientWhoPhP)

* input[ORG].type from VsPhPIDTaskInputTypes (required)
* input[ORG].type = TaskInputTypes#organization-request-resource
* input[ORG].value[x] only Reference
* input[ORG].valueReference only Reference (Organization) 

* input[REGAUTH].type from VsPhPIDTaskInputTypes (required)
* input[REGAUTH].type = TaskInputTypes#regauth-request-resource
* input[REGAUTH].value[x] only Reference
* input[REGAUTH].valueReference only Reference (RegulatedAuthorization) 

// NOT USED ELEMENTS
* insert NotUsed(requester)
* insert NotUsed(encounter)
* insert NotUsed(insurance)
* insert NotUsed(restriction)
