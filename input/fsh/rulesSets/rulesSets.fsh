// Keep the element visible but document that this profile does not use it
RuleSet: NotUsedLabel(path)
* {path} ^short = "Not used in this profile"
* {path} ^definition = "Not used in this profile"

// Remove unused elements in a profile
RuleSet: NotUsed(path)
* {path} 0..0

RuleSet: AdditionalBinding ( purpose, valueSetAlias, documentation, description)
// RuleSet: additionalBinding ( #conformance, VsSubstance, The specific substance that interacts., The specific substance that interacts.)
//* ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* ^binding.additional.purpose = {purpose}
* ^binding.additional.valueSet = Canonical({valueSetAlias})
* ^binding.additional.documentation = """{documentation}"""
* ^binding.description = "{description} see additional bindings in JSON OR XML"

RuleSet: BundleEntry (sliceName, card, profile, short, def )

* entry contains {sliceName} {card}
* entry[{sliceName}].resource 1..
* entry[{sliceName}].resource only {profile}
* entry[{sliceName}] ^short = "{short}"
* entry[{sliceName}] ^definition = """{def}"""

/* RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}
*/

// ATC classification slice on MedicinalProductDefinition.classification, fixed to one ATC system
RuleSet: AtcClassificationSlice(slice, system)
* classification[{slice}].coding.system 1..1
* classification[{slice}].coding.system = {system}
* classification[{slice}].coding.code 1..1
  * ^short = "ATC code, e.g. L04AB."
* classification[{slice}].text 0..1
  * ^short = "ATC text, e.g. Tumor necrosis factor alpha (TNF-) inhibitors."
