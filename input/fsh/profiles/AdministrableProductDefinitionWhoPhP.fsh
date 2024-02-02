Profile: AdministrableProductDefinitionWhoPhP
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-who-php
Title: "AdministrableProductDefinition (WHO PhP)"
Description: "This profile specified how the AdministrableProductDefinition is published by the WHO-UMC IDMP Service"

* insert SetFmmandStatusRule ( 0, draft )
* extension contains $parent-php-extension named parentPhp 0..3

// PDF CHARACTERISTICS EXTENSIONS
* extension contains $pdfCharacteristics-bdf-ext named basicDoseForm 0..1
* extension[basicDoseForm] ^short = "Basic Dose Form"
* extension contains $pdfCharacteristics-isi-ext named intendedSite 0..1
* extension[intendedSite] ^short = "Intended Site"
* extension contains $pdfCharacteristics-rca-ext named releaseCharacteristics 0..1
* extension[releaseCharacteristics] ^short = "Release Characteristics"
* extension contains $pdfCharacteristics-ame-ext named administrationMethod 0..1
* extension[administrationMethod] ^short = "Administration Method"

* contained 1..
* contained only IngredientWhoPhP
* id 1..
  * ^short = "PhPID"
  * ^definition =  "This is always values with the PhPID"
* identifier 1..1
  * type 1..1 
  * type from VsPhpIdLevels (required)
  * system 1..1
  * value 1..1

* status 1..1 
  * ^short = "draft | active | retired |unknown"

* formOf 1..
  * extension contains $data-absent-reason named data-absent-reason 0..
  * extension[data-absent-reason].valueCode = #unsupported

//only Reference(MedicinalProductDefinitionWhoPhP)

* administrableDoseForm from VsAdministrableDoseForm (example)

* routeOfAdministration 
  * code from VsRouteOfAdministration (example)

* property
  * type from VsEdqmPdfCharacteristicType
  * valueCodeableConcept from VsEdqmPdfCharacteristic (extensible)

// ************ Test *************
* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.description = "Slice based on the property.type pattern"

* property contains ISI 0..1 MS and BDF 0..1 MS and RCA 0..1 MS and AME 0..1 MS
* property[ISI].type = $pdfCharacteristics#ISI
  * ^short = "Intended Site"
* property[ISI].value[x] only CodeableConcept 
* property[ISI].valueCodeableConcept from edqm-ISI 
* property[BDF].type = $pdfCharacteristics#BDF
* property[BDF].value[x] only CodeableConcept 
* property[BDF].valueCodeableConcept from edqm-BDF
* property[AME].type = $pdfCharacteristics#AME
* property[AME].value[x] only CodeableConcept 
* property[AME].valueCodeableConcept from edqm-AME
* property[RCA].type = $pdfCharacteristics#RCA
* property[RCA].value[x] only CodeableConcept 
* property[RCA].valueCodeableConcept from edqm-RCA
//* property[ISI].valueReference only Reference (MedicinalProductDefinitionWhoPhPRequest)
// ********** End Test ***********

* unitOfPresentation 0..0
* producedFrom 0..0
* device 0..0
