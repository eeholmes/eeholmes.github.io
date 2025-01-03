---
title: "Remote-sensing plots"
header-includes: \usepackage{mathrsfs}
date: '2019-05-13'
permalink: '/posts/2019-5-13-transect-line/'
postname: '2019-5-13-transect-line'
rmd: yes
tags:
- Remote-sensing
- India
pdf: no
author: EE Holmes, National Marine Fisheries Service & University of Washington
---

<!--
require(eehutils)
filename="2019-5-14-transect-line.Rmd"
rmd_to_gfm(filename, pdf=TRUE)
-->

I have been working the last 5 years on a project having to do with the upwelling zones off the coast of India.  As part of this, I have been working on ways to visualize the upwelling zone---a spatial and temporal visualization problem. I have some RMarkdown files showing how to create these in R using data from the NOAA ERDDAP data server.

## Gifs and movies

The first example I have is how to make a movie (or gif) from remote-sensing data.

![Gif of SST off SW Coast of India](https://ocean-satellite-tools.github.io/RM_Gifs/gifs/kochin_sst_2014.gif)

I have two vignettes that show how to do this:

-   [Gifs of SST off the SW Coast of India 2015-2017](https://ocean-satellite-tools.github.io/RM_Gifs/Kochin_SST_2015-17.html)
-   [Movie from Gifs of SST off the SW Coast of India 2015-2017](https://ocean-satellite-tools.github.io/RM_Gifs/Kochin_SST_2015-17_movie.html)

## Colorbar plot

The second example is how to make a colorbar over time and space. Here is an example of chlorophyll off the coast of India in 2010. It is not very interesting since there are many NAs, but you get the idea.

![Colorbars](https://ocean-satellite-tools.github.io/transect-line/inst/doc/images/Chl2010.png)

[Link to examples](https://ocean-satellite-tools.github.io/transect-line/)
