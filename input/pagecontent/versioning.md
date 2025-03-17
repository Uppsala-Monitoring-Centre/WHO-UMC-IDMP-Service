<blockquote class="stu-note">
    <p>This part of the specification is only on a DRAFT level, it is not yet decided how the versioning of the API and the profiles will be handled. The versioning of the content will however follow the FHIR principles</p>
 </blockquote>

### Introduction
The WHO-UMC IDMP Service has support for versions in several different ways, all of them important depending on the context:
- Versioning of the API itself
- Versioning of FHIR
- Versioning of Profiles
- Versioning of data (content)

#### Versioning of content
The content of the resources will be versioned using the built in versioning mechanism within the meta data section of each resource.

#### Versioning of API
##### FHIR versioning
Versioning of the WHO-UMC IDMP Service in regards to the FHIR version used is accomplished using the Capability Statement. When requesting the Capability Statement using /metadata the current (active) version of FHIR, supported by the API, is returned.

However, for clients accessing the API in the  future, a specific FHIR version can be specified using the following construct:

> GET [base]/metadata
>
> Accept: application/fhir+xxx; fhirVersion=5.0 

If a FHIR version that is not supported, for example 4.0, is requested a `406 - Not Acceptable` response will be returned.

It is foreseen that the API will be upgraded to upcoming versions of the FHIR standard like for example FHIR version 6.0. To prepare for this, clients depending on the 5.0 standard would be encouraged to use the above method to verify that the version they need is still supported. It is also important to get the current Capability Statement in order to know that a new version is available and that the version currently being used by the client might get deprecated.

If a FHIR version that is no longer the "latest" version, for example 5.0 (when moving to FHIR 6.0), is requested a `20x` response will be returned with a `Warning` header.

> Warning: 299 IDMPService "Support for the requested FHIR version will be retired YYYYMMDD"

If a client implementation requires an older version of the FHIR standard, then the most current version being used by the API, all calls to the API must specify that standard using:

> GET [base]/[resource]/[id]
>
> Content-Type: application/fhir+xxx; fhirVersion=5.0

___Note:___ _xxx in the above examples should be replaced with xml or json_

##### API versioning

The current version of the WHO-UMC IDMP Service API is shown in the Capability Statement. When requesting the Capability Statement using /metadata the current (active) version of the API is returned in the software.version attribute.

The API supports a limited number of historical versions as outlined in the table in the end of this section. Generally the latest version of the API is the default, if a previous version of the API is to be used that version must be specified in every request using the following header:

> GET [base]/[resource]/[id]
>
> Accept: application/fhir+xxx; apiVersion=x.y;  

If an API version that is not supported is requested a `406 - Not Acceptable` response will be returned with a detaild message.

It is foreseen that the API will be continously upgraded. To prepare for this, clients is encouraged to use the above method to verify that the version they need is still supported. 

If an API version that is no longer the "latest" version is requested a `20x` response will be returned with a `Warning` header as follows.

> Warning: 299 IDMPService "Support for the requested FHIR version will be retired YYYYMMDD"

Implementors of the API should have a process to take action on such messages and be prepared to migrate to the latest version well in time before the expiration date.

#### Versioning of resources

 Versioning of how resources are used do not always following the FHIR versions. To support this scenario versioning of the profiles is used.  

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


###
Table of supported API and FHIR versions

<table>
<thead>
<tr class="header">
<th>API Version</th>
<th>FHIR Version</th>
<th>Status</th>
<th>Retirement date</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>2.2</td>
<td>5.0</td>
<td>Current</td>
<td>N/A</td>
</tr><tr class="odd">
<td>2.1</td>
<td>5.0</td>
<td>Active</td>
<td>2025-12-31</td>
</tr><tr class="odd">
<td>2.0</td>
<td>5.0</td>
<td>Retired</td>
<td class="warning">2024-12-31</td>
</tr><tr class="even">
<td>1.1</td>
<td>4.0</td>
<td>Active</td>
<td>2025-12-31</td>
</tr><tr class="odd">
<td>1.0</td>
<td>4.0</td>
<td>Retired</td>
<td class="warning">2024-12-31</td>
</tr></tbody>
</table>
