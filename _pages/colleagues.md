---
permalink: /colleagues/
title: "Colleagues"
author_profile: true
---

|               |               | Projects  |
| ------------- |:-------------:| ---------:|
{% for colleague in site.data.colleagues %}[{{ colleague.name }}]({{ colleague.website }}) | {% if colleague.github != null %}[<img src="/images/github.svg" width="18" height="18">](https://github.com/{{ colleague.github }}){% endif %} | {% if colleague.projects != null %}{% for project in colleague.projects %}[{{project.name}}]({{ project.url}}) {% endfor %}{% endif %} |
{% endfor %}

<style>
ul {
  list-style-type: none;
}
</style>


* [Eric Ward](https://eric-ward.github.io/) <a href="https://github.com/eric-ward"><img src="/images/github.svg" height="18" width="18"></a>
* [Mark Scheuerell](https://faculty.washington.edu/scheuerl/) <a href="https://github.com/mdscheuerell"><img src="/images/github.svg" height="18" width="18"></a>
* [Eric Anderson](http://eriqande.netlify.com/) <a href="https://github.com/eriqande"><img src="/images/github.svg" height="18" width="18"></a>
* [Jim Thorson](https://sites.google.com/site/thorsonresearch/) <a href="https://github.com/James-Thorson"><img src="/images/github.svg" height="18" width="18"></a> <a href="https://james-thorson.github.io//">FishStats</a> website.
* [Brice Semmens](http://scrippsscholars.ucsd.edu/bsemmens/biocv) Lab: [website](http://www.semmenslab.org/)
* [Brian Stock](https://brianstock.github.io)<a href="https://github.com/brianstock"><img src="/images/github.svg" height="18" width="18"></a> [MixSIAR](https://brianstock.github.io/mixsiar/)