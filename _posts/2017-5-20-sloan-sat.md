---
title: 'Baccalaureate Origins of Sloan Fellows: Liberal Arts Colleges Versus Research Universities, part 2'
date: 2015-05-20
permalink: /posts/2017/05/sloan-2/
tags:
  - STEM
  - Liberal Arts Colleges
  - Education
---

Analysis of the baccalaureate origins of Sloan fellows in the hard sciences using SAT tiers.

The [Sloan Fellowship](https://sloan.org/fellowships/) is a prestigious award for early career scientists at U.S. and Canadian academic institutions. The data sets I am using is one I assembled on the Baccalaureate origins of the Sloan Fellows along with data on the undergraduate institutions from the [Scorecard database](https://collegescorecard.ed.gov/data/) on U.S. Baccalaureate institutions. See the part 1 post for more details.

For these analyses, I look at the production of future Sloan fellows per 1000 undergraduates with **SAT math scores 700-800**. I am standardizing by the SAT math scores at a school. Harvard produces many Sloan fellows, but perhaps this is just because they have an abundance of undergraduates with very high SAT math scores, which correlates with STEM talent. This analysis removes the effect of number of high SATH math scorers.

I will be showing a series of cumulative plots where I look at the Sloan production within *groups* of schools. I am not concerned with individual schools, but rather the production within a whole group of schools. Cumulative plots help one see patterns when one is looking at rare events, like Sloan fellows. Within a group, I sort by size of school (this is step is not important), and then take the cumulative sum of school size and number of Sloan fellows. I then plot cumulative sum of size (enrollment) against cumulative number of Sloan fellows.

### Summary of the results

Standardizing by the SAT math scores does not completely remove the selectivity effect---the effect that more selective schools have a higher production of future Sloan fellows. However it removes much of the effect. The most striking result is that Liberal Arts Colleges (LACs) produce an unusually high number of future Sloan fellows given their enrollment size. This is particularly seen in the fields other than math and physics. In these non-math, non-physics fields, LACs have a higher per capita production of future Sloan fellows than the elite private schools (which includes the Ivies). Production of future Sloan fellows is not restricted to 'elite' LACs. The mid-tier LACs also have higher production than the elite private schools.

That small Liberal Arts Schools produce unusually high number of PhDs in STEM is well-known and has been reported in other studies. What my analysis indicates is that this higher than expected production is also seen when we look at a select group of highly productive research scientists in academia. This is a rarified group of those with PhDs in STEM, and represents the unusually productive research scientists (within academia).

The other big take-home is that within math and physics, however, the elite privates dominate. The next analysis shows that this is due to Harvard and Princeton within the elite private group.

Analysis using upper 75% SAT Math tiers and Carnegie School Classifications
---------------------------------------------------------------------------

For this analysis, I abandon the Equality of Opportunity Project tier groups and I switch to defining tiers using just the upper 75% SAT Math and the Carnegie School Classifications.

I will be using these Carnegie Classifications

-   15 = Doctoral Universities: Highest Research Activity
-   16 = Doctoral Universities: Higher Research Activity
-   18 = Master's Colleges & Universities: Larger Programs
-   21 = Baccalaureate Colleges: Arts & Sciences Focus

The idea is to examine whether there is a difference in the production of future Sloan Fellows based on the type of institution (research university versus undergraduate institution).

This analysis uses any school in the Scorecard database with an upper 75% SAT Math at the specified values. Some Liberal Arts colleges were missing values and I filled those in from www.collegedata.com.

Sloan Fellows by ACT brackets, regardless of school type
--------------------------------------------------------

Before comparing Liberal Arts colleges to research universities, I will look at the correlation between the upper 75% ACT score at the school versus the number of future Sloan Fellows. Conclusion, clearly the upper 75% ACT is a predictor for the number of future Sloan Fellows.

![](/blog_posts/2017-5-20-sloan-sat_files/figure-markdown_github/sloan.by.act-1.png)

Sloan Fellows for schools with upper 75% ACT = 34 or 33 broken out by type of school
------------------------------------------------------------------------------------

The ACT = 35 is a rarefied group. Let's look just at ACT = 34 and 33 together. Scroll below the plot to see the schools in each group. This plot shows that within this very high ACT group, LACs and private elite schools have similar per capitat Sloan production but public schools are lower even with the same mean ACT.

![](/blog_posts/2017-5-20-sloan-sat_files/figure-markdown_github/sloan.by.act34.type-1.png)

### act34.33.private

    ##  [1] "northwestern university"          
    ##  [2] "university of notre dame"         
    ##  [3] "johns hopkins university"         
    ##  [4] "washington university in st louis"
    ##  [5] "dartmouth college"                
    ##  [6] "columbia university"              
    ##  [7] "cornell university"               
    ##  [8] "duke university"                  
    ##  [9] "carnegie mellon university"       
    ## [10] "university of pennsylvania"       
    ## [11] "brown university"                 
    ## [12] "vanderbilt university"            
    ## [13] "rice university"                  
    ## [14] "stanford university"              
    ## [15] "university of southern california"
    ## [16] "georgetown university"            
    ## [17] "boston college"                   
    ## [18] "brandeis university"              
    ## [19] "northeastern university"          
    ## [20] "tufts university"                 
    ## [21] "case western reserve university"

### act34.33.public

    ## [1] "university of california-berkeley"          
    ## [2] "university of california-los angeles"       
    ## [3] "georgia institute of technology-main campus"
    ## [4] "university of michigan-ann arbor"           
    ## [5] "college of william and mary"                
    ## [6] "university of virginia-main campus"

### act34.33.lac

    ##  [1] "pomona college"                "amherst college"              
    ##  [3] "williams college"              "haverford college"            
    ##  [5] "swarthmore college"            "claremont mckenna college"    
    ##  [7] "scripps college"               "wesleyan university"          
    ##  [9] "grinnell college"              "bowdoin college"              
    ## [11] "wellesley college"             "carleton college"             
    ## [13] "hamilton college"              "vassar college"               
    ## [15] "reed college"                  "middlebury college"           
    ## [17] "washington and lee university"

<!--
## Sloan Fellows for schools with upper 75% ACT = 32 and 33 broken out by type of school

![](/blog_posts/2017-5-20-sloan-sat_files/figure-markdown_github/sloan.by.act32.33.type-1.png)
-->
Future Sloan Fellows By Carnegie Classification and Public/Private
------------------------------------------------------------------

For the next analyses, I will divide schools into three ACT bands based on the upper 75% ACT scores.

-   sat1: SAT Math upper 75% 770-800
-   sat2: SAT Math upper 75% 720-769
-   sat3: SAT Math upper 75% 640-719

I will divide the types of schools into Liberal Arts colleges. technical research universities and research universities that are not technical institutes.

-   Liberal Arts college: Carnegie Classification = 21
-   Highly productive research university: Carnegie Classification 15, 16 or 18. The latter (18) are Masters universities with high research output. Dartmouth is in this category for example. The technical institutes are excluded.
-   Technical institutes: Carnegie Classification 15, 16 or 18 and their name has either "institute of technology" or "polytechnical" in it.

The research universities are separated into public and private, but the technical institutes are not. The Liberal Arts colleges are exclusively private.

In the bar-plots, the label "T1" is technical institute in ACT band 1, "Pr2" is private research university in ACT band 2, etc.

Math and Physics future Sloan Fellows By Carnegie Classification and Public/Private
-----------------------------------------------------------------------------------

The large font number on each bar is the number of Sloan fellows total in the tier group. The number of undergraduates (in thousands) in each bar is shown below the number of Sloan Fellows as n=x. The number of institutions is shown as i=x. The bottom bar plot shows the per capita (per 1000 of undergraduates) production of future Sloan Fellows. The y-axis has been capped at 0.8; note that the per capita for the "T1" group (technical institutes in the highest ACT band) is much higher than 0.8. The data for each institution is given at the end of the post.

![](/blog_posts/2017-5-20-sloan-sat_files/figure-markdown_github/barplot1-1.png)

Production of Math and Physics future Sloan Fellows (top bar-plot) is numerically highest (103) in the private research universities with ACT 35-34; this group is the Ivies, Stanford, Univ of Chicago and a handful of other elite universities. Numerically, the next highest number of future Sloan Fellows comes from the public research universities (49) with the public universities in the lower ACT band (31-28) producing the most of the public universities. This tier ("Pu3") has many more undergraduates than the other tiers.

However when we look at the per capita production, the picture is a bit different. The per-capita production of Math and Physics future Sloan Fellows (bottom bar-plot) is much (much, much) higher in the technical institutes with ACT 35-34: MIT and Caltech. After that the highest is in the private research universities with ACT 35-34. The Liberal Arts colleges have a per capita production of future Math and Physics Sloan Fellows that is higher than the public research universities in both ACT band 1 and band 2.

Neuroscience, Chemistry, and Ocean Sciences future Sloan Fellows
----------------------------------------------------------------

This shows the same bar-plot for Neuroscience, Chemistry, and Ocean Sciences. The number of undergraduates (n in thousands) and number of institutions (i) is shown below the number of Sloan Fellows for each bar. The data for each institution is given at the end of the post.

![](/blog_posts/2017-5-20-sloan-sat_files/figure-markdown_github/barplot3-1.png)

Numerically, the overall picture is the same. Production of future Sloan Fellows (top bar-plot) is numerically highest (81) in the private research universities with ACT 35-34 and the next highest number of future Sloan Fellows comes from the public research universities (78). Within the top two ACT bands, the Liberal Arts colleges produce the same number of future Sloan Fellows as the public research universities, although the total number of undergraduates in these "L1" and "L2" groups is much lower.

When we look at the per-capita production, we see again that the per-capita production of future Sloan Fellows (bottom bar-plot) is much (much, much) higher in the "T1" group: MIT and Caltech. However, in contrast to what we saw for Math and Physics, the Liberal Arts colleges outproduce both the private and public research universities within every ACT bracket.

Number of Fellows by ACT
------------------------

This shows that Physics has an unusually high number of Sloan Fellows coming from institutions with the highest ACT scores.

![](/blog_posts/2017-5-20-sloan-sat_files/figure-markdown_github/num.by.act-1.png)

The public institutions are being penalized for low grad rates
--------------------------------------------------------------

In my per-capita calculations, I divide by the number of undergraduates. However the public institutions have lower 6-year graduations rates, so I am inflating the size of the undergraduate pool by dividing by the number of undergraduates. I need to somehow adjust for lower graduation rates. Ideally, I would use the number of degrees awarded each year or number awarded in a 5-year period.

Data
====

Math and Physics
----------------

This shows the institutions in each group along with the number of Sloan Fellows. I've added the SAT Math upper 75% score for each school. The tot.size is the undergraduate enrollment and 'size' is the estimated number of undergraduates with an SAT score of 700-800.

#### T1

|                                             |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|---------------------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| california institute of technology          |       983|   983|       12|         800|         1.00|   35|
| georgia institute of technology-main campus |     13996|  9043|        2|         770|         0.65|   33|
| massachusetts institute of technology       |      4476|  4217|        9|         800|         0.94|   35|
| rensselaer polytechnic institute            |      5557|  3590|        2|         770|         0.65|   32|

#### Pr1

|                                   |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|-----------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| brandeis university               |      3715|   2129|        0|         770|         0.57|   33|
| brown university                  |      6264|   3886|        5|         780|         0.62|   34|
| carnegie mellon university        |      5819|   4364|        2|         800|         0.75|   34|
| case western reserve university   |      4807|   2662|        1|         760|         0.55|   33|
| columbia university               |      8100|   6075|        6|         790|         0.75|   34|
| cornell university                |     14195|   9171|        4|         770|         0.65|   34|
| dartmouth college                 |      4184|   2703|        1|         770|         0.65|   34|
| duke university                   |      6480|   4860|        1|         790|         0.75|   34|
| georgetown university             |      7211|   3993|        0|         760|         0.55|   33|
| harvard university                |      7236|   5753|       23|         800|         0.80|   35|
| johns hopkins university          |      6039|   4188|        1|         770|         0.69|   34|
| northeastern university           |     13492|   8527|        0|         760|         0.63|   33|
| northwestern university           |      8725|   6544|        1|         790|         0.75|   34|
| princeton university              |      5258|   4181|       22|         800|         0.80|   35|
| rice university                   |      3888|   3112|        4|         790|         0.80|   34|
| stanford university               |      7018|   5264|        9|         790|         0.75|   34|
| tufts university                  |      5143|   3250|        0|         760|         0.63|   33|
| university of chicago             |      5729|   4694|        9|         800|         0.82|   35|
| university of notre dame          |      8427|   5445|        1|         770|         0.65|   34|
| university of pennsylvania        |     10678|   7476|        1|         780|         0.70|   34|
| university of southern california |     18392|  10184|        0|         760|         0.55|   33|
| vanderbilt university             |      6818|   5756|        0|         800|         0.84|   34|
| washington university in st louis |      6913|   5836|        4|         800|         0.84|   34|
| yale university                   |      5473|   4105|        8|         800|         0.75|   35|

#### Pu1

|                                            |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|--------------------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| university of california-berkeley          |     27126|  14125|        9|         770|         0.52|   34|
| university of california-san diego         |     24801|  11887|        2|         760|         0.48|   32|
| university of illinois at urbana-champaign |     31875|  23906|        2|         790|         0.75|   32|
| university of michigan-ann arbor           |     28217|  15624|        3|         760|         0.55|   33|

#### L1

|                              |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| amherst college              |      1792|  1158|        0|         770|         0.65|   34|
| bowdoin college              |      1797|  1202|        0|         770|         0.67|   33|
| carleton college             |      2042|  1131|        2|         760|         0.55|   33|
| claremont mckenna college    |      1293|   897|        0|         770|         0.69|   33|
| grinnell college             |      1670|   925|        0|         760|         0.55|   33|
| harvey mudd college          |       802|   756|        2|         800|         0.94|   35|
| illinois wesleyan university |      1883|  1043|        0|         760|         0.55|   30|
| pomona college               |      1635|  1134|        0|         770|         0.69|   34|
| swarthmore college           |      1530|   989|        1|         770|         0.65|   34|
| williams college             |      2019|  1224|        0|         770|         0.61|   34|

#### T2

|                                  |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|----------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| colorado school of mines         |      4383|  1613|        0|         720|         0.37|   32|
| illinois institute of technology |      3046|  1359|        0|         740|         0.45|   31|
| stevens institute of technology  |      2842|  1466|        0|         745|         0.52|   32|

#### Pr2

|                               |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|-------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| bentley university            |      4190|    836|        0|         690|         0.20|   30|
| boston college                |      9483|   4232|        0|         740|         0.45|   33|
| boston university             |     16457|   6247|        0|         730|         0.38|   31|
| emory university              |      7730|   3865|        0|         750|         0.50|   32|
| george washington university  |     10433|   2608|        0|         700|         0.25|   31|
| lehigh university             |      5034|   2247|        0|         740|         0.45|   32|
| new york university           |     24539|  10478|        2|         740|         0.43|   32|
| santa clara university        |      5447|   1634|        0|         710|         0.30|   32|
| southern methodist university |      6340|   1901|        0|         710|         0.30|   31|
| tulane university             |      7892|   1973|        0|         700|         0.25|   32|
| university of miami           |     10828|   4110|        0|         730|         0.38|   32|
| university of tulsa           |      3441|    860|        0|         700|         0.25|   32|

#### Pu2

|                                               |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|-----------------------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| college of william and mary                   |      6256|   2671|        0|         740|         0.43|   33|
| cuny bernard m baruch college                 |     14420|   2955|        0|         690|         0.20|   30|
| michigan state university                     |     38395|   8535|        1|         690|         0.22|   28|
| missouri university of science and technology |      6418|   1604|        0|         700|         0.25|   31|
| ohio state university-main campus             |     43733|  16601|        0|         730|         0.38|   31|
| purdue university-main campus                 |     29977|   7494|        0|         700|         0.25|   30|
| rutgers university-new brunswick              |     34094|   8524|        1|         700|         0.25|   31|
| stony brook university                        |     16170|   4765|        1|         710|         0.29|   30|
| suny at binghamton                            |     13372|   3343|        0|         700|         0.25|   30|
| university of california-davis                |     27547|   6887|        0|         700|         0.25|   31|
| university of california-irvine               |     24474|   5394|        0|         690|         0.22|   29|
| university of california-los angeles          |     29627|  12550|        1|         750|         0.42|   33|
| university of california-santa barbara        |     20237|   5699|        3|         710|         0.28|   31|
| university of connecticut                     |     18016|   3767|        0|         690|         0.21|   30|
| university of florida                         |     31879|   6666|        2|         690|         0.21|   31|
| university of iowa                            |     21486|   5372|        2|         700|         0.25|   28|
| university of maryland-college park           |     26532|  10072|        3|         730|         0.38|   32|
| university of minnesota-twin cities           |     30135|  13205|        2|         750|         0.44|   30|
| university of north carolina at chapel hill   |     17908|   6141|        0|         720|         0.34|   32|
| university of pittsburgh-pittsburgh campus    |     18474|   3785|        0|         690|         0.20|   31|
| university of texas at austin                 |     38914|  12705|        4|         720|         0.33|   32|
| university of texas at dallas                 |     14300|   3575|        0|         700|         0.25|   31|
| university of virginia-main campus            |     15515|   6625|        4|         740|         0.43|   33|
| university of washington-seattle campus       |     29468|   7367|        0|         700|         0.25|   31|
| university of wisconsin-madison               |     29302|  12046|        1|         740|         0.41|   31|

#### L2

|                                  |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|----------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| augustana college                |      2469|   560|        0|         690|         0.23|   29|
| barnard college                  |      2556|   767|        0|         710|         0.30|   32|
| bates college                    |      1773|   466|        1|         703|         0.26|   32|
| bryn mawr college                |      1303|   467|        0|         730|         0.36|   31|
| bucknell university              |      3528|  1210|        0|         720|         0.34|   32|
| colby college                    |      1847|   633|        0|         720|         0.34|   32|
| colgate university               |      2865|  1432|        1|         750|         0.50|   32|
| college of the holy cross        |      2754|   531|        0|         690|         0.19|   31|
| colorado college                 |      2036|   611|        1|         710|         0.30|   32|
| connecticut college              |      1875|   469|        0|         700|         0.25|   31|
| davidson college                 |      1765|   605|        0|         720|         0.34|   32|
| dickinson college                |      2315|   579|        0|         700|         0.25|   31|
| franklin and marshall college    |      2182|   859|        0|         730|         0.39|   31|
| hamilton college                 |      1890|   945|        0|         740|         0.50|   33|
| haverford college                |      1187|   594|        0|         740|         0.50|   34|
| kalamazoo college                |      1431|   315|        0|         690|         0.22|   30|
| kenyon college                   |      1651|   330|        0|         690|         0.20|   32|
| lafayette college                |      2471|   847|        0|         720|         0.34|   31|
| lawrence university              |      1483|   546|        1|         730|         0.37|   32|
| macalester college               |      2053|   844|        1|         735|         0.41|   32|
| middlebury college               |      2498|  1067|        0|         740|         0.43|   33|
| mount holyoke college            |      2161|   828|        0|         735|         0.38|   32|
| oberlin college                  |      2961|  1015|        0|         720|         0.34|   32|
| occidental college               |      2023|   506|        0|         700|         0.25|   31|
| pitzer college                   |      1076|   381|        0|         720|         0.35|   32|
| reed college                     |      1335|   526|        1|         730|         0.39|   33|
| rhodes college                   |      2007|   411|        0|         690|         0.20|   31|
| scripps college                  |       962|   289|        0|         710|         0.30|   33|
| smith college                    |      2563|   879|        0|         720|         0.34|   32|
| soka university of america       |       411|   118|        0|         710|         0.29|   29|
| st olaf college                  |      2990|   645|        0|         690|         0.22|   32|
| trinity college                  |      2262|   566|        0|         700|         0.25|   31|
| union college of schenectady, ny |      2204|   780|        0|         720|         0.35|   31|
| university of richmond           |      3223|  1105|        0|         720|         0.34|   32|
| vassar college                   |      2389|  1123|        0|         740|         0.47|   33|
| washington and lee university    |      1880|   868|        0|         730|         0.46|   33|
| wellesley college                |      2172|   969|        0|         740|         0.45|   33|
| wesleyan university              |      2907|  1241|        1|         740|         0.43|   33|
| wheaton college of wheaton, il   |      2402|   600|        0|         700|         0.25|   32|
| whitman college                  |      1480|   430|        1|         710|         0.29|   32|

#### T3

|                                                         |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|---------------------------------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| california polytechnic state university-san luis obispo |     19177|  3308|        0|         680|         0.17|   30|
| florida institute of technology                         |      3348|   462|        0|         660|         0.14|   30|
| lawrence technological university                       |      2798|   277|        0|         650|         0.10|   28|
| michigan technological university                       |      5576|   997|        0|         680|         0.18|   30|
| new jersey institute of technology                      |      6748|  1003|        0|         670|         0.15|   29|
| virginia polytechnic institute and state university     |     24191|  4325|        0|         680|         0.18|   30|

#### Pr3

|                                |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|--------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| american university            |      7094|   797|        0|         660|         0.11|   30|
| baylor university              |     13801|  1936|        0|         670|         0.14|   30|
| bethel university-saint paul   |      2936|   260|        0|         640|         0.09|   28|
| brigham young university-provo |     27163|  4686|        0|         680|         0.17|   31|
| butler university              |      4013|   434|        0|         650|         0.11|   29|
| chapman university             |      6211|   479|        0|         650|         0.08|   29|
| creighton university           |      3977|   553|        0|         665|         0.14|   29|
| drake university               |      3290|   551|        0|         670|         0.17|   30|
| drexel university              |     16681|  2340|        0|         670|         0.14|   27|
| emerson college                |      3757|   290|        0|         650|         0.08|   30|
| fordham university             |      8485|  1464|        0|         680|         0.17|   30|
| gonzaga university             |      4754|   367|        0|         650|         0.08|   29|
| loyola marymount university    |      6064|   682|        0|         660|         0.11|   30|
| marquette university           |      8212|   634|        0|         650|         0.08|   29|
| rockhurst university           |      1671|   233|        0|         650|         0.14|   28|
| rollins college                |      2670|   313|        0|         660|         0.12|   29|
| saint louis university         |      7822|  1162|        0|         670|         0.15|   30|
| seattle university             |      4415|   350|        0|         640|         0.08|   29|
| spring arbor university        |      2632|   327|        0|         645|         0.12|   25|
| syracuse university            |     14768|  1802|        0|         660|         0.12|   29|
| texas christian university     |      8600|   763|        0|         650|         0.09|   30|
| university of dallas           |      1324|   105|        0|         640|         0.08|   30|
| university of dayton           |      8305|   658|        0|         640|         0.08|   29|
| university of denver           |      5629|   633|        0|         660|         0.11|   30|
| university of detroit mercy    |      2677|   481|        0|         670|         0.18|   26|
| yeshiva university             |      2814|   518|        0|         680|         0.18|   29|

#### Pu3

|                                            |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|--------------------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| arizona state university-tempe             |     39316|  3487|        0|         640|         0.09|   28|
| auburn university                          |     20514|  1918|        0|         645|         0.09|   30|
| clemson university                         |     17083|  2819|        0|         680|         0.16|   31|
| college of new jersey                      |      6407|   899|        0|         670|         0.14|   29|
| cuny city college                          |     12175|  1680|        0|         660|         0.14|   29|
| cuny hunter college                        |     15778|  1560|        0|         650|         0.10|   28|
| florida state university                   |     32432|  1489|        0|         640|         0.05|   29|
| indiana university-bloomington             |     32252|  4209|        0|         660|         0.13|   30|
| iowa state university                      |     28336|  5568|        2|         680|         0.20|   29|
| miami university-oxford                    |     15454|  2763|        0|         680|         0.18|   30|
| mississippi state university               |     15800|  1662|        0|         640|         0.11|   28|
| north carolina state university at raleigh |     22925|  3572|        0|         680|         0.16|   30|
| north dakota state university-main campus  |     11763|  1981|        0|         665|         0.17|   26|
| pennsylvania state university-main campus  |     39958|  5938|        2|         670|         0.15|   29|
| southern illinois university-carbondale    |     13171|  1480|        0|         640|         0.11|   26|
| texas a and m university-college station   |     46941|  6975|        0|         670|         0.15|   30|
| university at buffalo                      |     19488|  1729|        0|         650|         0.09|   29|
| university of alabama at birmingham        |     11383|  1279|        0|         640|         0.11|   27|
| university of alabama in huntsville        |      5451|   589|        0|         650|         0.11|   30|
| university of california-riverside         |     18784|  2186|        1|         650|         0.12|   27|
| university of california-santa cruz        |     16277|  2015|        0|         650|         0.12|   29|
| university of central florida              |     52280|  3022|        0|         640|         0.06|   28|
| university of cincinnati-main campus       |     23795|  3284|        0|         660|         0.14|   28|
| university of colorado boulder             |     25873|  3376|        0|         660|         0.13|   30|
| university of delaware                     |     18222|  2223|        0|         660|         0.12|   29|
| university of georgia                      |     26738|  3751|        0|         670|         0.14|   30|
| university of houston                      |     31643|  2180|        0|         640|         0.07|   27|
| university of illinois at chicago          |     16635|  2296|        0|         660|         0.14|   27|
| university of kentucky                     |     21725|  2114|        0|         640|         0.10|   28|
| university of maryland-baltimore county    |     11274|  1582|        0|         670|         0.14|   30|
| university of massachusetts-amherst        |     21864|  3068|        0|         670|         0.14|   30|
| university of massachusetts-lowell         |     12190|   840|        0|         640|         0.07|   28|
| university of michigan-dearborn            |      6906|   945|        0|         658|         0.14|   27|
| university of michigan-flint               |      6565|  1304|        0|         680|         0.20|   24|
| university of minnesota-duluth             |      9120|   887|        0|         640|         0.10|   26|
| university of missouri-columbia            |     27276|  3764|        1|         660|         0.14|   28|
| university of missouri-kansas city         |      8127|  1645|        0|         680|         0.20|   28|
| university of missouri-st louis            |      8936|  1435|        0|         660|         0.16|   27|
| university of nebraska-lincoln             |     19979|  2889|        0|         660|         0.14|   28|
| university of new orleans                  |      6742|  1218|        0|         670|         0.18|   25|
| university of north carolina wilmington    |     12686|   582|        0|         640|         0.05|   26|
| university of oklahoma-norman campus       |     20538|  3329|        0|         670|         0.16|   29|
| university of puerto rico-rio piedras      |     12086|  2179|        0|         673|         0.18|   29|
| university of south carolina-columbia      |     24623|  2494|        0|         660|         0.10|   29|
| university of tennessee-knoxville          |     21396|  1695|        1|         640|         0.08|   29|
| university of utah                         |     22804|  2654|        1|         650|         0.12|   28|
| university of vermont                      |      9958|   985|        0|         650|         0.10|   29|

#### L3

|                                 |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|---------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| agnes scott college             |       802|    78|        0|         640|         0.10|   29|
| albion college                  |      1249|   111|        0|         640|         0.09|   27|
| austin college                  |      1272|   126|        0|         650|         0.10|   27|
| bard college                    |      2021|   361|        0|         680|         0.18|   29|
| beloit college                  |      1225|   102|        0|         645|         0.08|   30|
| centre college                  |      1379|   254|        0|         680|         0.18|   31|
| college of wooster              |      2029|   302|        0|         670|         0.15|   30|
| concordia college at moorhead   |      2296|    49|        0|         660|         0.02|   28|
| cornell college                 |      1082|   126|        0|         650|         0.12|   30|
| denison university              |      2265|   391|        0|         680|         0.17|   31|
| depauw university               |      2185|   246|        0|         660|         0.11|   29|
| earlham college                 |       942|   162|        0|         680|         0.17|   31|
| furman university               |      2796|   341|        0|         660|         0.12|   30|
| gettysburg college              |      2437|   352|        0|         680|         0.14|   29|
| gordon college                  |      1703|   166|        0|         640|         0.10|   29|
| gustavus adolphus college       |      2455|   447|        0|         675|         0.18|   30|
| hendrix college                 |      1322|   173|        0|         660|         0.13|   31|
| hobart william smith colleges   |      2344|   247|        0|         670|         0.11|   30|
| hope college                    |      3312|   358|        0|         650|         0.11|   29|
| knox college                    |      1376|   102|        0|         660|         0.07|   29|
| lewis and clark college         |      2039|   242|        0|         670|         0.12|   31|
| luther college                  |      2326|   226|        0|         640|         0.10|   28|
| muhlenberg college              |      2332|   262|        0|         660|         0.11|   31|
| ripon college                   |       820|   173|        0|         680|         0.21|   27|
| sarah lawrence college          |      1366|   258|        0|         680|         0.19|   31|
| sewanee-university of the south |      1616|   125|        0|         650|         0.08|   30|
| skidmore college                |      2612|   467|        0|         680|         0.18|   30|
| st john's college               |       429|    77|        0|         680|         0.18|   31|
| st lawrence university          |      2282|   278|        0|         660|         0.12|   30|
| thomas aquinas college          |       378|    17|        0|         640|         0.05|   31|
| transylvania university         |      1014|   140|        0|         660|         0.14|   30|
| university of puget sound       |      2550|   226|        0|         650|         0.09|   30|
| wabash college                  |       923|    82|        0|         640|         0.09|   27|
| washington college              |      1408|    97|        0|         640|         0.07|   28|
| westmont college                |      1297|   115|        1|         640|         0.09|   29|
| wheaton college of norton, ma   |      1575|   219|        0|         665|         0.14|   30|
| willamette university           |      2009|   199|        0|         650|         0.10|   30|
| wofford college                 |      1654|   131|        0|         640|         0.08|   30|

### Neurobiology, Chemistry, Ocean Sciences

#### T1

|                                             |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|---------------------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| california institute of technology          |       983|   983|        9|         800|         1.00|   35|
| georgia institute of technology-main campus |     13996|  9043|        0|         770|         0.65|   33|
| massachusetts institute of technology       |      4476|  4217|       14|         800|         0.94|   35|
| rensselaer polytechnic institute            |      5557|  3590|        0|         770|         0.65|   32|

#### Pr1

|                                   |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|-----------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| brandeis university               |      3715|   2129|        3|         770|         0.57|   33|
| brown university                  |      6264|   3886|        5|         780|         0.62|   34|
| carnegie mellon university        |      5819|   4364|        1|         800|         0.75|   34|
| case western reserve university   |      4807|   2662|        0|         760|         0.55|   33|
| columbia university               |      8100|   6075|        3|         790|         0.75|   34|
| cornell university                |     14195|   9171|        5|         770|         0.65|   34|
| dartmouth college                 |      4184|   2703|        6|         770|         0.65|   34|
| duke university                   |      6480|   4860|        2|         790|         0.75|   34|
| georgetown university             |      7211|   3993|        0|         760|         0.55|   33|
| harvard university                |      7236|   5753|       16|         800|         0.80|   35|
| johns hopkins university          |      6039|   4188|        2|         770|         0.69|   34|
| northeastern university           |     13492|   8527|        0|         760|         0.63|   33|
| northwestern university           |      8725|   6544|        1|         790|         0.75|   34|
| princeton university              |      5258|   4181|        9|         800|         0.80|   35|
| rice university                   |      3888|   3112|        2|         790|         0.80|   34|
| stanford university               |      7018|   5264|        7|         790|         0.75|   34|
| tufts university                  |      5143|   3250|        2|         760|         0.63|   33|
| university of chicago             |      5729|   4694|        2|         800|         0.82|   35|
| university of notre dame          |      8427|   5445|        1|         770|         0.65|   34|
| university of pennsylvania        |     10678|   7476|        2|         780|         0.70|   34|
| university of southern california |     18392|  10184|        3|         760|         0.55|   33|
| vanderbilt university             |      6818|   5756|        0|         800|         0.84|   34|
| washington university in st louis |      6913|   5836|        6|         800|         0.84|   34|
| yale university                   |      5473|   4105|        3|         800|         0.75|   35|

#### Pu1

|                                            |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|--------------------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| university of california-berkeley          |     27126|  14125|        8|         770|         0.52|   34|
| university of california-san diego         |     24801|  11887|        0|         760|         0.48|   32|
| university of illinois at urbana-champaign |     31875|  23906|        4|         790|         0.75|   32|
| university of michigan-ann arbor           |     28217|  15624|        4|         760|         0.55|   33|

#### L1

|                              |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| amherst college              |      1792|  1158|        0|         770|         0.65|   34|
| bowdoin college              |      1797|  1202|        1|         770|         0.67|   33|
| carleton college             |      2042|  1131|        1|         760|         0.55|   33|
| claremont mckenna college    |      1293|   897|        0|         770|         0.69|   33|
| grinnell college             |      1670|   925|        0|         760|         0.55|   33|
| harvey mudd college          |       802|   756|        1|         800|         0.94|   35|
| illinois wesleyan university |      1883|  1043|        1|         760|         0.55|   30|
| pomona college               |      1635|  1134|        1|         770|         0.69|   34|
| swarthmore college           |      1530|   989|        3|         770|         0.65|   34|
| williams college             |      2019|  1224|        4|         770|         0.61|   34|

#### T2

|                                  |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|----------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| colorado school of mines         |      4383|  1613|        0|         720|         0.37|   32|
| illinois institute of technology |      3046|  1359|        0|         740|         0.45|   31|
| stevens institute of technology  |      2842|  1466|        0|         745|         0.52|   32|

#### Pr2

|                               |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|-------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| bentley university            |      4190|    836|        0|         690|         0.20|   30|
| boston college                |      9483|   4232|        1|         740|         0.45|   33|
| boston university             |     16457|   6247|        0|         730|         0.38|   31|
| emory university              |      7730|   3865|        1|         750|         0.50|   32|
| george washington university  |     10433|   2608|        0|         700|         0.25|   31|
| lehigh university             |      5034|   2247|        1|         740|         0.45|   32|
| new york university           |     24539|  10478|        3|         740|         0.43|   32|
| santa clara university        |      5447|   1634|        0|         710|         0.30|   32|
| southern methodist university |      6340|   1901|        1|         710|         0.30|   31|
| tulane university             |      7892|   1973|        0|         700|         0.25|   32|
| university of miami           |     10828|   4110|        0|         730|         0.38|   32|
| university of tulsa           |      3441|    860|        0|         700|         0.25|   32|

#### Pu2

|                                               |  Tot.Size|   Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|-----------------------------------------------|---------:|------:|--------:|-----------:|------------:|----:|
| college of william and mary                   |      6256|   2671|        4|         740|         0.43|   33|
| cuny bernard m baruch college                 |     14420|   2955|        0|         690|         0.20|   30|
| michigan state university                     |     38395|   8535|        2|         690|         0.22|   28|
| missouri university of science and technology |      6418|   1604|        0|         700|         0.25|   31|
| ohio state university-main campus             |     43733|  16601|        2|         730|         0.38|   31|
| purdue university-main campus                 |     29977|   7494|        0|         700|         0.25|   30|
| rutgers university-new brunswick              |     34094|   8524|        1|         700|         0.25|   31|
| stony brook university                        |     16170|   4765|        0|         710|         0.29|   30|
| suny at binghamton                            |     13372|   3343|        0|         700|         0.25|   30|
| university of california-davis                |     27547|   6887|        1|         700|         0.25|   31|
| university of california-irvine               |     24474|   5394|        1|         690|         0.22|   29|
| university of california-los angeles          |     29627|  12550|        5|         750|         0.42|   33|
| university of california-santa barbara        |     20237|   5699|        0|         710|         0.28|   31|
| university of connecticut                     |     18016|   3767|        0|         690|         0.21|   30|
| university of florida                         |     31879|   6666|        1|         690|         0.21|   31|
| university of iowa                            |     21486|   5372|        1|         700|         0.25|   28|
| university of maryland-college park           |     26532|  10072|        5|         730|         0.38|   32|
| university of minnesota-twin cities           |     30135|  13205|        2|         750|         0.44|   30|
| university of north carolina at chapel hill   |     17908|   6141|        3|         720|         0.34|   32|
| university of pittsburgh-pittsburgh campus    |     18474|   3785|        0|         690|         0.20|   31|
| university of texas at austin                 |     38914|  12705|        2|         720|         0.33|   32|
| university of texas at dallas                 |     14300|   3575|        0|         700|         0.25|   31|
| university of virginia-main campus            |     15515|   6625|        3|         740|         0.43|   33|
| university of washington-seattle campus       |     29468|   7367|        0|         700|         0.25|   31|
| university of wisconsin-madison               |     29302|  12046|        6|         740|         0.41|   31|

#### L2

|                                  |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|----------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| augustana college                |      2469|   560|        0|         690|         0.23|   29|
| barnard college                  |      2556|   767|        0|         710|         0.30|   32|
| bates college                    |      1773|   466|        1|         703|         0.26|   32|
| bryn mawr college                |      1303|   467|        1|         730|         0.36|   31|
| bucknell university              |      3528|  1210|        0|         720|         0.34|   32|
| colby college                    |      1847|   633|        1|         720|         0.34|   32|
| colgate university               |      2865|  1432|        1|         750|         0.50|   32|
| college of the holy cross        |      2754|   531|        0|         690|         0.19|   31|
| colorado college                 |      2036|   611|        0|         710|         0.30|   32|
| connecticut college              |      1875|   469|        1|         700|         0.25|   31|
| davidson college                 |      1765|   605|        0|         720|         0.34|   32|
| dickinson college                |      2315|   579|        0|         700|         0.25|   31|
| franklin and marshall college    |      2182|   859|        0|         730|         0.39|   31|
| hamilton college                 |      1890|   945|        1|         740|         0.50|   33|
| haverford college                |      1187|   594|        0|         740|         0.50|   34|
| kalamazoo college                |      1431|   315|        0|         690|         0.22|   30|
| kenyon college                   |      1651|   330|        0|         690|         0.20|   32|
| lafayette college                |      2471|   847|        1|         720|         0.34|   31|
| lawrence university              |      1483|   546|        1|         730|         0.37|   32|
| macalester college               |      2053|   844|        4|         735|         0.41|   32|
| middlebury college               |      2498|  1067|        3|         740|         0.43|   33|
| mount holyoke college            |      2161|   828|        0|         735|         0.38|   32|
| oberlin college                  |      2961|  1015|        1|         720|         0.34|   32|
| occidental college               |      2023|   506|        0|         700|         0.25|   31|
| pitzer college                   |      1076|   381|        0|         720|         0.35|   32|
| reed college                     |      1335|   526|        2|         730|         0.39|   33|
| rhodes college                   |      2007|   411|        0|         690|         0.20|   31|
| scripps college                  |       962|   289|        0|         710|         0.30|   33|
| smith college                    |      2563|   879|        1|         720|         0.34|   32|
| soka university of america       |       411|   118|        0|         710|         0.29|   29|
| st olaf college                  |      2990|   645|        1|         690|         0.22|   32|
| trinity college                  |      2262|   566|        0|         700|         0.25|   31|
| union college of schenectady, ny |      2204|   780|        0|         720|         0.35|   31|
| university of richmond           |      3223|  1105|        0|         720|         0.34|   32|
| vassar college                   |      2389|  1123|        0|         740|         0.47|   33|
| washington and lee university    |      1880|   868|        0|         730|         0.46|   33|
| wellesley college                |      2172|   969|        1|         740|         0.45|   33|
| wesleyan university              |      2907|  1241|        2|         740|         0.43|   33|
| wheaton college of wheaton, il   |      2402|   600|        0|         700|         0.25|   32|
| whitman college                  |      1480|   430|        0|         710|         0.29|   32|

#### T3

|                                                         |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|---------------------------------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| california polytechnic state university-san luis obispo |     19177|  3308|        1|         680|         0.17|   30|
| florida institute of technology                         |      3348|   462|        0|         660|         0.14|   30|
| lawrence technological university                       |      2798|   277|        0|         650|         0.10|   28|
| michigan technological university                       |      5576|   997|        0|         680|         0.18|   30|
| new jersey institute of technology                      |      6748|  1003|        0|         670|         0.15|   29|
| virginia polytechnic institute and state university     |     24191|  4325|        0|         680|         0.18|   30|

#### Pr3

|                                |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|--------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| american university            |      7094|   797|        0|         660|         0.11|   30|
| baylor university              |     13801|  1936|        1|         670|         0.14|   30|
| bethel university-saint paul   |      2936|   260|        0|         640|         0.09|   28|
| brigham young university-provo |     27163|  4686|        0|         680|         0.17|   31|
| butler university              |      4013|   434|        0|         650|         0.11|   29|
| chapman university             |      6211|   479|        0|         650|         0.08|   29|
| creighton university           |      3977|   553|        0|         665|         0.14|   29|
| drake university               |      3290|   551|        0|         670|         0.17|   30|
| drexel university              |     16681|  2340|        0|         670|         0.14|   27|
| emerson college                |      3757|   290|        0|         650|         0.08|   30|
| fordham university             |      8485|  1464|        0|         680|         0.17|   30|
| gonzaga university             |      4754|   367|        0|         650|         0.08|   29|
| loyola marymount university    |      6064|   682|        0|         660|         0.11|   30|
| marquette university           |      8212|   634|        1|         650|         0.08|   29|
| rockhurst university           |      1671|   233|        0|         650|         0.14|   28|
| rollins college                |      2670|   313|        0|         660|         0.12|   29|
| saint louis university         |      7822|  1162|        1|         670|         0.15|   30|
| seattle university             |      4415|   350|        0|         640|         0.08|   29|
| spring arbor university        |      2632|   327|        0|         645|         0.12|   25|
| syracuse university            |     14768|  1802|        0|         660|         0.12|   29|
| texas christian university     |      8600|   763|        0|         650|         0.09|   30|
| university of dallas           |      1324|   105|        0|         640|         0.08|   30|
| university of dayton           |      8305|   658|        0|         640|         0.08|   29|
| university of denver           |      5629|   633|        0|         660|         0.11|   30|
| university of detroit mercy    |      2677|   481|        0|         670|         0.18|   26|
| yeshiva university             |      2814|   518|        0|         680|         0.18|   29|

#### Pu3

|                                            |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|--------------------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| arizona state university-tempe             |     39316|  3487|        1|         640|         0.09|   28|
| auburn university                          |     20514|  1918|        0|         645|         0.09|   30|
| clemson university                         |     17083|  2819|        0|         680|         0.16|   31|
| college of new jersey                      |      6407|   899|        0|         670|         0.14|   29|
| cuny city college                          |     12175|  1680|        0|         660|         0.14|   29|
| cuny hunter college                        |     15778|  1560|        1|         650|         0.10|   28|
| florida state university                   |     32432|  1489|        0|         640|         0.05|   29|
| indiana university-bloomington             |     32252|  4209|        2|         660|         0.13|   30|
| iowa state university                      |     28336|  5568|        0|         680|         0.20|   29|
| miami university-oxford                    |     15454|  2763|        0|         680|         0.18|   30|
| mississippi state university               |     15800|  1662|        0|         640|         0.11|   28|
| north carolina state university at raleigh |     22925|  3572|        1|         680|         0.16|   30|
| north dakota state university-main campus  |     11763|  1981|        0|         665|         0.17|   26|
| pennsylvania state university-main campus  |     39958|  5938|        7|         670|         0.15|   29|
| southern illinois university-carbondale    |     13171|  1480|        0|         640|         0.11|   26|
| texas a and m university-college station   |     46941|  6975|        1|         670|         0.15|   30|
| university at buffalo                      |     19488|  1729|        0|         650|         0.09|   29|
| university of alabama at birmingham        |     11383|  1279|        0|         640|         0.11|   27|
| university of alabama in huntsville        |      5451|   589|        0|         650|         0.11|   30|
| university of california-riverside         |     18784|  2186|        1|         650|         0.12|   27|
| university of california-santa cruz        |     16277|  2015|        1|         650|         0.12|   29|
| university of central florida              |     52280|  3022|        0|         640|         0.06|   28|
| university of cincinnati-main campus       |     23795|  3284|        0|         660|         0.14|   28|
| university of colorado boulder             |     25873|  3376|        0|         660|         0.13|   30|
| university of delaware                     |     18222|  2223|        2|         660|         0.12|   29|
| university of georgia                      |     26738|  3751|        0|         670|         0.14|   30|
| university of houston                      |     31643|  2180|        0|         640|         0.07|   27|
| university of illinois at chicago          |     16635|  2296|        0|         660|         0.14|   27|
| university of kentucky                     |     21725|  2114|        0|         640|         0.10|   28|
| university of maryland-baltimore county    |     11274|  1582|        0|         670|         0.14|   30|
| university of massachusetts-amherst        |     21864|  3068|        0|         670|         0.14|   30|
| university of massachusetts-lowell         |     12190|   840|        0|         640|         0.07|   28|
| university of michigan-dearborn            |      6906|   945|        0|         658|         0.14|   27|
| university of michigan-flint               |      6565|  1304|        0|         680|         0.20|   24|
| university of minnesota-duluth             |      9120|   887|        0|         640|         0.10|   26|
| university of missouri-columbia            |     27276|  3764|        1|         660|         0.14|   28|
| university of missouri-kansas city         |      8127|  1645|        0|         680|         0.20|   28|
| university of missouri-st louis            |      8936|  1435|        0|         660|         0.16|   27|
| university of nebraska-lincoln             |     19979|  2889|        0|         660|         0.14|   28|
| university of new orleans                  |      6742|  1218|        1|         670|         0.18|   25|
| university of north carolina wilmington    |     12686|   582|        0|         640|         0.05|   26|
| university of oklahoma-norman campus       |     20538|  3329|        1|         670|         0.16|   29|
| university of puerto rico-rio piedras      |     12086|  2179|        0|         673|         0.18|   29|
| university of south carolina-columbia      |     24623|  2494|        0|         660|         0.10|   29|
| university of tennessee-knoxville          |     21396|  1695|        1|         640|         0.08|   29|
| university of utah                         |     22804|  2654|        1|         650|         0.12|   28|
| university of vermont                      |      9958|   985|        1|         650|         0.10|   29|

#### L3

|                                 |  Tot.Size|  Size|  Fellows|  SAT.Math75|  SAT.700.800|  ACT|
|---------------------------------|---------:|-----:|--------:|-----------:|------------:|----:|
| agnes scott college             |       802|    78|        0|         640|         0.10|   29|
| albion college                  |      1249|   111|        0|         640|         0.09|   27|
| austin college                  |      1272|   126|        0|         650|         0.10|   27|
| bard college                    |      2021|   361|        0|         680|         0.18|   29|
| beloit college                  |      1225|   102|        0|         645|         0.08|   30|
| centre college                  |      1379|   254|        0|         680|         0.18|   31|
| college of wooster              |      2029|   302|        0|         670|         0.15|   30|
| concordia college at moorhead   |      2296|    49|        1|         660|         0.02|   28|
| cornell college                 |      1082|   126|        0|         650|         0.12|   30|
| denison university              |      2265|   391|        0|         680|         0.17|   31|
| depauw university               |      2185|   246|        0|         660|         0.11|   29|
| earlham college                 |       942|   162|        0|         680|         0.17|   31|
| furman university               |      2796|   341|        1|         660|         0.12|   30|
| gettysburg college              |      2437|   352|        1|         680|         0.14|   29|
| gordon college                  |      1703|   166|        0|         640|         0.10|   29|
| gustavus adolphus college       |      2455|   447|        0|         675|         0.18|   30|
| hendrix college                 |      1322|   173|        0|         660|         0.13|   31|
| hobart william smith colleges   |      2344|   247|        0|         670|         0.11|   30|
| hope college                    |      3312|   358|        1|         650|         0.11|   29|
| knox college                    |      1376|   102|        0|         660|         0.07|   29|
| lewis and clark college         |      2039|   242|        0|         670|         0.12|   31|
| luther college                  |      2326|   226|        1|         640|         0.10|   28|
| muhlenberg college              |      2332|   262|        0|         660|         0.11|   31|
| ripon college                   |       820|   173|        0|         680|         0.21|   27|
| sarah lawrence college          |      1366|   258|        0|         680|         0.19|   31|
| sewanee-university of the south |      1616|   125|        0|         650|         0.08|   30|
| skidmore college                |      2612|   467|        0|         680|         0.18|   30|
| st john's college               |       429|    77|        0|         680|         0.18|   31|
| st lawrence university          |      2282|   278|        0|         660|         0.12|   30|
| thomas aquinas college          |       378|    17|        0|         640|         0.05|   31|
| transylvania university         |      1014|   140|        0|         660|         0.14|   30|
| university of puget sound       |      2550|   226|        0|         650|         0.09|   30|
| wabash college                  |       923|    82|        0|         640|         0.09|   27|
| washington college              |      1408|    97|        0|         640|         0.07|   28|
| westmont college                |      1297|   115|        0|         640|         0.09|   29|
| wheaton college of norton, ma   |      1575|   219|        0|         665|         0.14|   30|
| willamette university           |      2009|   199|        0|         650|         0.10|   30|
| wofford college                 |      1654|   131|        0|         640|         0.08|   30|
