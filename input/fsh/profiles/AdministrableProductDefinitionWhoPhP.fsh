Profile: AdministrableProductDefinitionWhoPhP
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-who-php
Title: "AdministrableProductDefinition (WHO PhP)"
Description: "This profile specified how the AdministrableProductDefinition is published by the WHO-UMC IDMP Service"

* insert SetFmmandStatusRule ( 0, draft )
* extension contains $parent-php-extension named parentPhp 0..3

// PDF CHARACTERISTICS EXTENSIONS
* extension contains $pdfCharacteristics-bdf-extension named pdfCharacteristicsBDF 0..1
* extension[pdfCharacteristicsBDF] ^short = "Basic Dose Form"
* extension contains $pdfCharacteristics-isi-extension named pdfCharacteristicsISI 0..1
* extension[pdfCharacteristicsISI] ^short = "Intended Site"
* extension contains $pdfCharacteristics-rca-extension named pdfCharacteristicsRCA 0..1
* extension[pdfCharacteristicsRCA] ^short = "Release Characteristics"
* extension contains $pdfCharacteristics-ame-extension named pdfCharacteristicsAME 0..1
* extension[pdfCharacteristicsAME] ^short = "Administration Method"

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

* unitOfPresentation 0..0
* producedFrom 0..0
* device 0..0
