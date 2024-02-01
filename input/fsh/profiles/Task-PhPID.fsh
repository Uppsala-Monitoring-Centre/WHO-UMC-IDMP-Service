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

//*******************************
// Common
//*******************************
RuleSet: TaskGeneratePhPIDCommon
* insert SetFmmandStatusRule ( 0, draft )
* identifier 0..
  * ^short = "Identifier assigned by the requestor to track the request."
* instantiatesUri ^short = "Link to the definiton of the task"
* basedOn // check if this should be sued for tracking the request or if we should say not used
* businessStatus ^short = "business-specific state" // check if useful
// CHECK IF IT IS A FIXED VALUE OR A VALUE SET BINDING
* intent = http://hl7.org/fhir/request-intent#proposal 
* priority ^short = "Task priority" // check if this is needed
* code 0.. // Assigne A CODE
  * ^short = "PhPID Assignment"
* authoredOn 1..
* lastModified 1..
* contained 3..
  * ^short = "Resources, according to 'input', used in PhPID generation."
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.type pattern"

* input contains MPD 1..1 MS and ORG 1..1 MS and ING 1..* MS
* input[MPD].type = TaskInputTypes#mpd-request-resource
* input[MPD].value[x] only Reference
* input[MPD].valueReference only Reference (MedicinalProductDefinitionWhoPhPRequest)

* input[ORG].type = TaskInputTypes#organization-request-resource
* input[ORG].value[x] only Reference
* input[ORG].valueReference only Reference (Organization) //MarketingAuthorizationHolderWhoPhpRequest

* input[ING].type = TaskInputTypes#ingredient-request-resource
* input[ING].value[x] only Reference
* input[ING].valueReference only Reference (IngredientWhoPhP)

* output 0..1
  * type = http://hl7.org/fhir/fhir-types#AdministrableProductDefinition 
  * value[x] only Reference
  * valueReference only Reference (AdministrableProductDefinitionWhoPhP)

// NOT USED ELEMENTS
* requester 0..0
* encounter 0..0
* insurance 0..0
* restriction 0..0