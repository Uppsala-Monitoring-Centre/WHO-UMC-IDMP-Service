//*******************************
// Response from status request
//*******************************
Profile: TaskPhPIPub
Parent: Task
Id: Task-phpid-pub
Title: "Task (PhPID publish)"
Description: """This profile specified how to use the Task resource to request status of a previously sent request"""
* id 1..1
* status 1..1
  * ^short =	"Status of the task"

* insert TaskGeneratePhPIdCommon

* contained 4..*
  * ^short = "Resources, according to 'input', used in PhPID generation."
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.type value"

* input contains MPD 1..1 MS and ING 1..* MS and ORG 1..1 MS and REGAUTH 1..1 MS
* input[MPD].type from VsPhPIDTaskInputTypes (required)
* input[MPD].type = CsTaskInputTypes#mpd-request-resource
* input[MPD].value[x] only Reference
// Using MedicinalProductDefinitionPhPIdReq because the Task published is an identical copy of what the customer sent in the request.
// So it should conform to the same profile as the request.
* input[MPD].valueReference only Reference (MedicinalProductDefinitionPhPIdReq) 

* input[ING].type from VsPhPIDTaskInputTypes (required)
* input[ING].type = CsTaskInputTypes#ingredient-request-resource
* input[ING].value[x] only Reference
// Using IngredientPhPIdReq because the Task published is an identical copy of what the customer sent in the request.
// So it should conform to the same profile as the request.
* input[ING].valueReference only Reference (IngredientPhPIdReq)

* input[ORG].type from VsPhPIDTaskInputTypes (required)
* input[ORG].type = CsTaskInputTypes#organization-request-resource
* input[ORG].value[x] only Reference
* input[ORG].valueReference only Reference (Organization) 

* input[REGAUTH].type from VsPhPIDTaskInputTypes (required)
* input[REGAUTH].type = CsTaskInputTypes#regauth-request-resource
* input[REGAUTH].value[x] only Reference
* input[REGAUTH].valueReference only Reference (RegulatedAuthorizationPhPIdReq) 

* authoredOn 1..
* lastModified 1..

* output 0..5
  * type from http://umcterminologies.org/ValueSet/phpid-task-output-type  (required)
  * value[x] only Reference 
  //* CodeableReference only Reference (AdministrableProductDefinitionPub or MedicinalProductDefinitionPub)
