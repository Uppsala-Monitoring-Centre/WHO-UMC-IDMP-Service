//*******************************
// Publish model
//*******************************
Profile: SubstanceDefinitionPublished
Parent: SubstanceDefinition
Id: SubstanceDefinition-pub
Title: "SubstanceDefinition (publish)"
Description: """This profile specified how the SubstanceDefinition is published by the WHO-UMC IDMP FHIR Service"""
* identifier 1..1
* text 0..1 
* id 1..1
* identifier.system = $gsid
* status 1..1
* status ^short =	"draft|active|retired"
* domain 1..1
* code 0..
* code.code
  * coding 1..*
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #closed
    * ^definition = """Alternatives codes used for identifying this substance (UNII,CAS,EU-SRS)"""
    * system 1..
    * code 1..
  // ************* UNII *************
  * coding contains unii 0.. 
  * coding[unii]
    * system = $unii
    * ^short = "UNII"
    * ^definition = """FDA Unique identifer for subtances: UNII"""  
  // ************* CAS *************
  * coding contains cas 0.. 
  * coding[cas]
    * system = $cas
    * ^short = "CAS"
    * ^definition = """CAS subtances code"""
  // ************* EU-SRS *************
  * coding contains eusrs 0.. 
  * coding[eusrs]
    * system = $eusrs
    * ^short = "EU-SRS"
    * ^definition = """European SRS"""
  * text 0..
* name 1..
  * status 0..
    * ^short = "name status"
  * preferred 1..
  * language 1..
  * language from $VS-language
  * official 1..1
* relationship 0..1
* structure 0..1
  * representation 1..1
    * format
      * coding 1..1
        * code 1..1 
        * code = $substRepresentationCS#SMILES
        * system 1..1
        //* system = $substRepresentationVS
// NOT USED ELEMENTS

* insert NotUsed(version)
* insert NotUsed(classification)
* insert NotUsed(grade)
* insert NotUsed(description)

* insert NotUsed(note)
* insert NotUsed(manufacturer)
* insert NotUsed(supplier)
* insert NotUsed(moiety)

* insert NotUsed(property)
* insert NotUsed(molecularWeight)
* insert NotUsed(sourceMaterial)