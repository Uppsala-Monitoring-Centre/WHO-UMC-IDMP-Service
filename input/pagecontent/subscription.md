<blockquote class="stu-note">
    <p>This part of the specification is only on a DRAFT level. The full mechanism for Change Management has not yet been decided on but FHIR subscriptions is the planned way forward for the moment. Any updates on decisions or development regarding Change Management and FHIR Subscriptions will be reflected in this specification.</p>
 </blockquote>

### Introduction

Updates can happen to resources for many different reasons, such as an update of information within the resource or a status change. It could be a completed Task, a retired/replaced SubstanceDefinition GSID etc. What these changes have in common is the need to inform other parties about the change in order to allow them to act on the change if needed.
  
#### Client updating a resource (requesting an updated/new ID)

Any changes to resources sent to the IDMP Service as requests (Tasks) by clients should be notified to the Service using a new Task in the same format as the original request.

#### Resource updated by the maintenance organization

Changes to resources within the IDMP Service are notified using FHIR Subscriptions. 
TBD.
