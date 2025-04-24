<blockquote class="stu-note">
    <p>This part of the specification is only on a DRAFT level, it is not yet decided how the versioning of the API and the profiles will be handled. The versioning of the content will however follow the FHIR principles.</p>
 </blockquote>

### Introduction
The UMC IDMP Service has support for versions in several different ways, all of them important depending on the context:
- Versioning of the API itself
- Versioning of FHIR
- Versioning of Profiles
- Versioning of data (content)

#### Versioning of content
The content of the resources will be versioned using the built in versioning mechanism within the meta data section of each resource.

#### Versioning of API
___Note I:___ _The reason that the below described versioning mechanism has been selected is that we do not want the URL to change since that might affect clients using the untire URL to reference resources._

The current version of the WHO-UMC IDMP Service API as well as the FHIR version is shown in the Capability Statement. When requesting the Capability Statement using /metadata the current (active) version of the API is returned in the software.version attribute.

The API supports a limited number of historical versions as outlined in the table in the end of this section. Generally the latest version of the API is the default, if a previous version of the API is to be used that version must be specified in every request using the following header:

> GET [base]/[resource]/[id]
>
> x-api-version: x.y;  

___Note II:___ _only two digits of the API version number can be used in this way_

If an API version that is not supported is requested a `406 - Not Acceptable` response will be returned with a detaild message.

It is foreseen that the API will be continously upgraded. To prepare for this, clients is encouraged to use the above method to verify that the version they need is still supported. 

Only API versions with breaking changes will be handled as described above. Minor versions that is backward compatible with the previous version, affecting only the third didgit 'z' in (x.y.z), will not be possible to specify. 

If an API version that is no longer the "latest" version is requested a `20x` response will be returned with a `Warning` header as follows.

> Warning: 299 IDMPService "Support for the requested FHIR version will be retired YYYYMMDD"

___Note III:___ _Implementors of the API should have a process to take action on such messages and be prepared to migrate to the latest version well in time before the expiration date._

___Note IV:___ _xxx in the above examples should be replaced with xml or json._

#### FHIR versioning
There is no specific version handling in regards to FHIR versions. FHIR versions will follow the API varsioning so if a new FHIR version is released which the client can _not yet_ support the client need to continue using the old API version until it is ready to migrate to the new version.

#### Versioning of resources

Versioning of resources through profiles follow the versioning of the API.  

### Table of supported API and FHIR versions

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
