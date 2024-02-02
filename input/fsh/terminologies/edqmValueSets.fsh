/*
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
* $pdfCharacteristics#BDF "Basic dose form"
* $pdfCharacteristics#AME "Administration method"
* $pdfCharacteristics#ISI "Intended site"
* $pdfCharacteristics#RCA "Release characteristics"
// previously $standardterms

*/
