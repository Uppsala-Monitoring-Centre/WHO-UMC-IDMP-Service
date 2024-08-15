Profile: SubscriptionIdmpEvent
Parent: Subscription
Id: Subscription-IdmpEvent
Title: "Subscription for event notifications"
Description: "Subscription for event notifications"

* content 1..1
  * ^short = "id-only"
* endpoint 1..1
* channelType 1..1
  * system = $channelType
  * code from VsChannelType
