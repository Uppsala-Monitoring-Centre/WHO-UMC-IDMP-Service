Profile: AdministrableProductDefinitionPub
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-pub
Title: "AdministrableProductDefinition (publish)"
Description: "This profile defines how the AdministrableProductDefinition is published by UMC terminologies"

* extension contains parent-phpid named parent-phpid 0..3

// PDF CHARACTERISTICS EXTENSIONS
* extension contains basic-dose-form named basic-dose-form 0..1
* extension[basic-dose-form] ^short = "Basic Dose Form"
* extension contains intended-site named intended-site 0..3
* extension[intended-site] ^short = "Intended Site"
* extension contains release-characteristics named release-characteristics 0..1
* extension[release-characteristics] ^short = "Release Characteristics"
* extension contains administration-method named administration-method 0..3
* extension[administration-method] ^short = "Administration Method"

* meta.source 1..1
* contained 1..
* contained only IngredientPhPIdPub
* id 1..
  * ^short = "PhPID"
  * ^definition =  "This is always values with the PhPID"
* identifier 1..1
  * type 1..1 
  * type from VsPhpIdLevel (required)
  * system 1..1
  * value 1..1

* status 1..1 
  * ^short = "draft | active | retired |unknown"

* formOf 0..0

// ADF is intended to be like chewable tablet acc to EDQM. 
// The PhPID is only using Tablet as concept (the BDF) so two APDs with similar (but different) ADFs will have the same PhPID
// Therefore... we do not use ADF but the extensions associated with the Pharmaceutical Form
* administrableDoseForm 0..0

* unitOfPresentation 0..0
* producedFrom 0..0
* device 0..0


* insert NotUsed(implicitRules)
* insert NotUsed(modifierExtension)
* insert NotUsed(routeOfAdministration.modifierExtension)
