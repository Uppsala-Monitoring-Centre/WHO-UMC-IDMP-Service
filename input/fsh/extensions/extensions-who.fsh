Extension: ParentPhp
Id:   parent-phpid
Title: "Parent PhP"
Description: "This extension applies to the ADP resource and is used to refer the parent ADPs representing the upper level PhP."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $parent-php-extension
* value[x] only Reference (AdministrableProductDefinitionWhoPhP)
* valueReference.identifier 1..
  * system = "http://www.who-umc.org/idmp/phpid"
  * system 1..

Extension: PDFCharacteristics
Id: pdf-characteristics
Title: "Pharmaceutical dose form characteristics"
Description: "This extension is use to display the dose form characteristics for an AdministrableProductDefinition"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

* ^url = $pdfCharacteristics-extension
* value[x] only Reference (AdministrableProductDefinitionWhoPhP)
* valueReference.identifier 1..
  * system = $edqm
  * system 1..
