//*******************************
// New request
//*******************************
Profile: TaskPhPIdReq
Parent: Task
Id: Task-phpid-req
Title: "Task (PhPID request)"
Description: """This profile specified how to use the Task resource to request (via POST) the generation of a PhPID by using the WHO-UMC IDMP FHIR Service"""
* status 1..1 
  * ^short =	"Status of the task should always be 'requested' when a new request"
* status = #requested

* insert TaskGeneratePhPIdCommon

* contained 4..*
  * ^short = "Resources, according to 'input', used in PhPID generation."
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.type value"

* input contains MPD 1..1 MS and ING 1..* MS and ORG 1..1 MS and REGAUTH 1..1 MS
* input[MPD].type from VsPhPIDTaskInputType (required)
* input[MPD].type = CsTaskInputTypes#mpd-request-resource
* input[MPD].value[x] only Reference
* input[MPD].valueReference only Reference (MedicinalProductDefinitionReq)

* input[ING].type from VsPhPIDTaskInputType (required)
* input[ING].type = CsTaskInputTypes#ingredient-request-resource
* input[ING].value[x] only Reference
* input[ING].valueReference only Reference (IngredientPhPIdReq)

* input[ORG].type from VsPhPIDTaskInputType (required)
* input[ORG].type = CsTaskInputTypes#organization-request-resource
* input[ORG].value[x] only Reference
* input[ORG].valueReference only Reference (Organization) 

* input[REGAUTH].type from VsPhPIDTaskInputType (required)
* input[REGAUTH].type = CsTaskInputTypes#regauth-request-resource
* input[REGAUTH].value[x] only Reference
* input[REGAUTH].valueReference only Reference (RegulatedAuthorizationPhPIdReq) 
