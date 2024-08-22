<blockquote class="stu-note">
    <p>This part of the specification is only on a DRAFT level, it is not yet decided how the change management will be done but ucrrently FHIR subscriptions is the planned way forward.</p>
 </blockquote>

### Introduction

Updates can happen to resources for many different reasons like an update of information within the resource or a status change. It could be a completed Task, a retired/replaced SubstanceDefinition GSID and so forth. What they have in common is the need to inform other parties about the change to allow them to act on the change if needed.
  
#### Client updating a resource (requesting an updated/new ID)

Any changes to resources sent to the IDMP Service as requests (Tasks) by clients should be notified to the Service using a new Task in the same way as the original request.

#### Resource updated by the maintenance organization

Changes to resources within the IDMP Service are notified using FHIR subscriptions. 
TBD.
