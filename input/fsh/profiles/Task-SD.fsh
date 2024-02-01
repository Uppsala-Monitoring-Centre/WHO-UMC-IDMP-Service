//*******************************
// New request
//*******************************
Profile: TaskGenerateGSID
Parent: Task
Id: Task-who-php-gsid
Title: "Task GSID request"
Description: """This profile specified how to use the Task resource to request (via POST) the generation of a GSID by using the WHO-UMC IDMP FHIR Service"""
* status 1..1 
  * ^short =	"Status of the task should always be 'requested' when a new request"
* status = #requested  
* insert TaskGenerateGSIDCommon

//*******************************
// Response from status request
//*******************************
Profile: TaskGenerateGSIDStatus
Parent: Task
Id: Task-who-php-gsid-status
Title: "Task GSID request status"
Description: """This profile specified how to use the Task resource to request status of a previously sent request"""
* id 1..1
* status 1..1 
  * ^short =	"Status of the task"
* insert TaskGenerateGSIDCommon

//*******************************
// Common
//*******************************
RuleSet: TaskGenerateGSIDCommon
* insert SetFmmandStatusRule ( 0, draft )
* identifier 1..
  * ^short = "Identifier assigned by the requestor to track the request."
* instantiatesUri ^short = "Link to the definiton of the task"
* basedOn // check if this should be sued for tracking the request or if we should say not used
* businessStatus ^short = "business-specific state" // check if useful
* intent = http://hl7.org/fhir/request-intent#proposal 
* priority ^short = "Task priority" // check if this is needed
* code 0.. // ASSIGN A CODE
  * ^short = "GSID Assignment"
* authoredOn 1..
* lastModified 1..
* contained 1..1
  * ^short = "SubstanceDefinition resource to request GSID for."
* input 1..1
  * type = TaskInputTypes#substance-request-resource 
  * value[x] only Reference
  * valueReference only Reference (SubstanceDefinition-req)
* output 0..1 
  * type = http://hl7.org/fhir/fhir-types#SubstanceDefinition // check if a fixed value is enough (there are several types of SDs)
  * value[x] only Reference
  * valueReference only Reference (SubstanceDefinition-pub)

// NOT USED ELEMENTS

* insert NotUsed(requester)
* insert NotUsed(encounter)
* insert NotUsed(insurance)
* insert NotUsed(restriction)