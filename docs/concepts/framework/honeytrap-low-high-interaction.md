---
title: Low and High interaction honeypot
---

{% capture overview %}
This page describes the low and high interaction honeypot architecture.
{% endcapture %}

{% capture body %}

## Description
Depending on the architecture, technical requirements and the prefered use case, several levels of interaction can be applied. The interaction with the honeypot varies from very low interaction to high interaction. It is possible to provide lower or higher interaction based on the protocol being used.

## Low interaction HoneyTrap
When running HoneyTrap in low interaction mode, the attacker has almost no interaction with the honeypot. An example of this use case is when HoneyTrap is being used in [Sensor Mode](/docs/concepts/framework/honeytrap-sensor/). Every request to the honeypot is being logged, although no interaction takes place.

## High interaction HoneyTrap
When HoneyTrap is operating in high interaction mode, it is possible to deliver an environment that simulates a genuine system. HoneyTrap allows forwarding to virtual/physical machines or containers, allowing advanced deception techniques providing several services.

{% endcapture %}

<!--
{% capture whatsnext %}

{% endcapture %}
-->

{% include templates/concept.md %}
