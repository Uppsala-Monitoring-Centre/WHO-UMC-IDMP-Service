///// TO BE REMOVE TODO: Not used in our code, but in Magnus PoC

Profile: SubscriptionIdmpEvent
Parent: Subscription
Id: Subscription-IdmpEvent
Title: "Subscription for event notifications"
Description: "Subscription for event notifications"

* content 1..1
  * ^short = "id-only"
* endpoint 1..1
* topic 
  * ^short = "Available topics are found at https://umcterminologies.org/fhir/SubscriptionTopic" 
* channelType 1..1
  * system = $channelType-CS
  * code from $channelType
