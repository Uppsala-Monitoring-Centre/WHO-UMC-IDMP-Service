//=========================
ValueSet: VsEdqm
Id: edqm
Title: "EDQM Standard Terms"
Description: "EDQM Standard Terms"
* ^experimental = false
* codes from system $standardterms

//=========================
ValueSet: VsEdqmPdfCharacteristic
Id: edqmPdfCharacteristic
Title: "EDQM PDF by characteristics"
Description: "EDQM Pharmaceutical dose forms by characteristics"
* ^experimental = true
* codes from valueset $edqmPdfBasicDoseForm
* codes from valueset $edqmPdfAdministrationMethod
* codes from valueset $edqmPdfIntendedSite
* codes from valueset $edqmPdfReleaseChar

//=========================
ValueSet: VsEdqmPdfCharacteristicType
Id: edqmPdfCharacteristicType
Title: "Types of EDQM PDF by characteristics"
Description: "Types of EDQM Pharmaceutical dose forms by characteristics"
* ^experimental = false
* $pdfCharacteristrics#BDF "Basic dose form"
* $pdfCharacteristrics#AME "Administration method"
* $pdfCharacteristrics#ISI "Intended site"
* $pdfCharacteristrics#RCA "Release characteristics"
// previously $standardterms


