### Introduction

#### Versioning of API
Versioning of the WHO-UMC IDMP Service in regards to the FHIR version used is accomplished using the Capability Statement. When requesting the Capability Statement using /metadata the current (active) version of FHIR, supported by the API, is returned.

However, for clients accessing the API in the  future, a specific FHIR version can be specified using the following construct:

> GET [base]/metadata
>
> Accept: application/fhir+xxx; fhirVersion=5.0 

If a FHIR version that is not supported, for example 4.0, is requested a `406 - Not Acceptable` response will be returned.

It is foreseen that the API will be upgraded to upcoming versions of the FHIR standard like for example FHIR version 6.0. To prepare for this, clients depending on the 5.0 standard would be encouraged to use the above method to verify that the version they need is still supported. It is also important to get the current Capability Statement in order to know that a new version is available and that the version currently being used by the client might get deprecated.

If a client implementation requires an older version of the FHIR standard, then the most current version being used by the API, all calls to the API must specify that standard using:

> Content-Type: application/fhir+xxx; fhirVersion=1.0

___Note:___ _xxx in the above examples should be replaced with xml or json_

#### Versioning of resources

Versioning of resources is not always following the FHIR versions. To support this scenario versioning of the profiles is used.

##### Sending resources
Resources sent to the API should be versioned using the profiles. When validating for example a `Task` sent in with resources included in the contains section each resource is validated using the provided profile. If no profile is provided the resources are validated against the latest profile.

If an old profile is being used a validation warning may be issued for a spcified period of time defined by an expiry date. When the expiry date has passsed an error will be issued. 

    "meta": {
     "profile": [
      "http://idmp.who-umc.org/fhir/StructureDefinition/SubstanceDefinition-req-v1"
     ]
    }

___Note:___ _for the client to operate efter expiry date it is important to handle the warnings and take action in due time_

##### Requesting resources
The version of a resource is defined using the profile (as for the request scenario). It is up to the client to handle any changes needed. In the Implementation Guide old versions of the profiles will be available for upversioning support.

    "meta": {
     "profile": [
      "http://idmp.who-umc.org/fhir/StructureDefinition/SubstanceDefinition-pub-v1"
     ]
    }


