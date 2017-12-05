---
title: "Blog"
permalink: /blog/
author_profile: true
customjs:
 - http://feeds.feedburner.com/ParsimoniousPursuits?format=sigpro
---

test1

[Go to full blog](http://parsimoniouspursuits.blogspot.com)
<script
src="http://feeds.feedburner.com/ParsimoniousPursuits?format=sigpro" type="text/javascript" >
</script>

<!-- Custom JavaScript files set in YAML front matter -->
{% for js in page.customjs %}
<script async type="text/javascript" src="{{ js }}"></script>
{% endfor %}

test2