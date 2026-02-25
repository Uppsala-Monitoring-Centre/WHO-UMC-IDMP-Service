//*******************************
// Common
//*******************************
RuleSet: TaskGeneratePhPIdCommon
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
* code from task-request-code
* code = task-request-code#phpid-request

// NOT USED ELEMENTS
* insert NotUsed(requester)
* insert NotUsed(encounter)
* insert NotUsed(insurance)
* insert NotUsed(restriction)
