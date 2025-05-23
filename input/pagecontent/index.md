### Scope

The scope of this Implementation Guide is to document the UMC IDMP API FHIR service, by describing the context in which the API can be used as well as the technical overview for using the API. 

### Introduction

This Implementation Guide has a target audience of system integrators to the UMC IDMP API. The API is based on the HL7 FHIR standard and this guide describes supported FHIR resources.

The Implementation Guide describes how FHIR standard is used to exchange data for ISO IDMP standards for global PhPIDs and GSIDs. For information about ISO IDMP, see the [Background](background.html) section in this guide. 

The main resources maintained by the service are the Pharmaceutical Product IDs, PhPIDs, (manifested through the AdministrableProductDefinition resource) and the Global Substance IDs, GSIDs, (manifested through the SubstanceDefinition resource). However, the MedicinalProductDefinition resource is also vital since it serves as input for PhPID generation. 
The Implementation Guide describes how new global PhPIDs and GSIDs are requested using asynchronous FHIR requests, and how they are delivered through FHIR.

#### Access to the UMC IDMP FHIR server

##### Production
The production FHIR server can be reached at [https://idmp.who-umc.org/fhir](https://idmp.who-umc.org/fhir). To get access to the production server, please contact asa.parnaste [at] who-umc.org.

##### Preview
The preview FHIR server can be reached at [https://preview-idmp.who-umc.org/fhir](https://preview-idmp.who-umc.org/fhir). To get access to the preview server, please contact asa.parnaste [at] who-umc.org.

##### Proof of Concept
The PoC FHIR server can be reached at [https://poc-idmp.who-umc.org/fhir](https://poc-idmp.who-umc.org/fhir). 
A tutorial with examples is found at [https://poc-idmp.who-umc.org/](https://poc-idmp.who-umc.org/)


### Dependencies

{% include dependency-table.xhtml %}


### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP statements

{% include ip-statements.xhtml %}


### Authors and Contributors

<table>
<thead>
<tr class="header">
<th>Roles</th>
<th>Name</th>
<th>Organization</th>
<th>Contact</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Author</td>
<td>Magnus Wallberg</td>
<td>Uppsala Monitoring Centre</td>
<td>magnus.wallberg [at] who-umc.org</td>
</tr><tr class="even">
<td>Author</td>
<td>Giorgio Cangioli</td>
<td>HL7 Europe</td>
<td>giorgio.cangioli [at] gmail.com</td>
</tr><tr class="odd">
<td>Author</td>
<td>Åsa Pärnaste</td>
<td>Uppsala Monitoring Centre</td>
<td>asa.parnaste [at] who-umc.org</td>
</tr><tr class="even">
<td>Author</td>
<td>João Almeida</td>
<td>HL7 Europe</td>
<td>joaofilipe90 [at] gmail.com</td>
</tr><tr class="even">
<td>Author</td>
<td>Mikael Nilsson</td>
<td>Uppsala Monitoring Centre</td>
<td>mikael.nilsson [at] who-umc.org</td>
</tr></tbody>
</table>
