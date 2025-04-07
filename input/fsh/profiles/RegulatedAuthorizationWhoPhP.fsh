Profile: RegulatedAuthorizationWhoPhpRequest
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-who-php
Title: "Regulated Authorization"
Description: "RegulatedAuthorization is a resource covering the authorization of a type of regulated product, treatment, facility or activity"

* identifier 0..1
* subject only Reference( MedicinalProductDefinitionWhoPhPRequest )
* holder 1..1
