---
permalink: /colleagues/
title: "Statistical Ecology Colleagues"
author_profile: true
---

|               |   GitHub      | Projects  |
| ------------- |:-------------:|:---------:|
{% for colleague in site.data.colleagues %}[{{ colleague.name }}]({{ colleague.website }}) | {% if colleague.github != null %}[<img src="/images/github.svg" width="18" height="18">](https://github.com/{{ colleague.github }}){% endif %} | {% if colleague.projects != null %}{% for project in colleague.projects %}[{{project.name}}]({{ project.url}}),  {% endfor %}{% endif %} |
{% endfor %}

