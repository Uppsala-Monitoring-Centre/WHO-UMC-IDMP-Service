///// TO BE REMOVED? Check with Åsa/Jessica. TODO TODO

Profile: RegulatedAuthorizationPhPIdReq
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-phpid-req
Title: "Regulated Authorization (PhPID request)"
Description: "Regulated Authorization is a resource covering the authorization of a type of regulated product, treatment, facility or activity"

* identifier 0..*
* subject 1..1 
* subject only Reference( MedicinalProductDefinitionReq )
* holder 1..1
