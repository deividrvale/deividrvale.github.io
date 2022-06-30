---
layout: page
permalink: /publications/
title: publications
description: >
  List of my publications in reversed chronological order.
years: [2022, 2021, 2020, 2019]
nav: true
---


{% if site.last_updated %}
I try my best to maintain this list updated. Last updated was on {{ "now" | date: '%B %d, %Y' }}.
{% endif %}

<div class="publications">

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
