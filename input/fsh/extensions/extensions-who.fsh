Extension: ParentPhPId
Id:   parent-phpid
Title: "Parent PhPID"
Description: "This extension applies to the APD resource and is used to refer the parent APDs representing the upper level PhPID."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $parent-phpid-extension
* value[x] only Reference (AdministrableProductDefinitionPub)
* valueReference.identifier 1..
  * system = $phpid
  * system 1..

Extension: RCA
Id: release-characteristics
Title: "Pharmaceutical dose form - ReleaseCharacteristics"
Description: "This extension is use to display the ReleaseCharacteristics for an AdministrableProductDefinition"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $pdfCharacteristics-rca-ext
* value[x] only Coding 
* valueCoding 1..1
  * system = $edqm
  * system 1.. 
  * code from VsEdqmRca

Extension: ISI
Id: intended-site
Title: "Pharmaceutical dose form - IntendedSite"
Description: "This extension is use to display the IntendedSite for an AdministrableProductDefinition"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $pdfCharacteristics-isi-ext
* value[x] only Coding 
* valueCoding 1..1
  * system = $edqm
  * system 1.. 
  * code from VsEdqmIsi

Extension: BDF
Id: basic-dose-form
Title: "Pharmaceutical dose form - BasicDoseForm"
Description: "This extension is use to display the BasicDoseForm for an AdministrableProductDefinition"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $pdfCharacteristics-bdf-ext
* value[x] only Coding 
* valueCoding 1..1
  * system = $edqm
  * system 1.. 
  * code from VsEdqmBdf

Extension: AME
Id: administration-method
Title: "Pharmaceutical dose form - AdministrationMethod"
Description: "This extension is use to display the AdministrationMethod for an AdministrableProductDefinition"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $pdfCharacteristics-ame-ext
* value[x] only Coding 
* valueCoding 1..1
  * system = $edqm
  * system 1.. 
  * code from VsEdqmAme
