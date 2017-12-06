---
title: 'Baccalaureate Origins of Sloan Fellows, part 2: Liberal Arts Colleges Versus Research Universities'
date: 2017-05-20
permalink: /posts/2017/05/sloan-2/
tags:
  - STEM
  - Liberal Arts Colleges
  - Education
---

Analysis of the baccalaureate origins of Sloan fellows in the hard sciences using SAT tiers.

The [Sloan Fellowship](https://sloan.org/fellowships/) is a prestigious award for early career STEM scientists at U.S. and Canadian academic institutions. The data set I am using is one I assembled on the Baccalaureate origins of the Sloan Fellows who received their undergraduate education in the U.S., which was approximately 50% of the fellows. The data were collected by looking up the CVs of the fellows, the names of which are posted in the Sloan Foundation press releases. I combined the Bacculaureate origin data with data on the undergraduate institutions from the [Scorecard database](https://collegescorecard.ed.gov/data/) on U.S. Baccalaureate institutions.

The data were then filtered to only include fellows who received their undergraduate degree in the **U.S.** and from either a **research** university or a liberal arts college (LAC). This is important to understand when looking at the results---the liberal arts colleges are being compared to research universities. This filtering only excluded a handful of fellows who received their undergraduate degrees in the U.S.; basically all Sloan fellows received their undergraduate degrees at a research university or liberal arts college.

This is my second attempt at this analysis. In my first attempt, I used the Equality of Opportunity tier groups (e.g. 'Highly selective private') and also tiers based on ACT scores (31, 32, etc). The most important difference is that I used total undergraduate enrollment as the 'size' of the school. I realized that the number of students with high SAT Math scores would be a better 'size' to use. The nature of Sloan Fellowships means that it is unlikely that the awardee would have had an SAT Math score under 700 as an undergraduate. These are people went to graduate school in fields that require quantitative skills. This second analysis uses the number of undergraduates with an SAT Math score between 700-800.

I will be showing a series of barplots where I look at the Sloan production within *groups* of schools. I am not concerned with individual schools, but rather the production within a whole group of schools.

### Summary of the results

Standardizing by the SAT math scores does not completely remove the selectivity effect---the effect that more selective schools have a higher production of future Sloan fellows. However it removes much of the effect.

Four schools have produced the lion's share of the future Sloan fellows: MIT, CalTech, Harvard and Princeton. This is particularly the case in math, physics and economics where 36% of Sloan fellows received their undergraduate degrees from these four schools. In the other fields, 20% received their undergraduate degrees from these schools. Because these groups have an outsized effect on the results for their 'group', I removed them for the rest of the analysis and looked at where the other Sloan fellows received their undergraduate education.

The most striking result with these four outlier institutions removed is that Liberal Arts Colleges (LACs) produce an unusually high number of future Sloan fellows given their enrollment size. Approximately 25% of future Sloan fellows in math, physics and economics get their undergraduate degrees at a LAC (8% if we include the four outlier schools). Similarly in the other fields, 25% of future Sloan fellows went to a LAC as an undergraduate (15% if we include the four outlier schools). This is a high percentage if we consider the enrollment size of LACs. LACs have a higher per capita production of future Sloan fellows than the elite private schools (which includes the Ivies minus Harvard and Princeton). Production of future Sloan fellows is not restricted to 'elite' LACs. The mid-tier LACs also have higher production than the elite private schools, which are considerably more selective.

That small Liberal Arts Schools produce unusually high number graduates who go on to get PhDs in STEM is well-known and has been reported in other studies. What my analysis indicates is that this higher than expected production is also seen when we look at a select group of highly productive early-career research scientists in academia. These individuals are many years past their undergraduate education: they have finished a PhD, finished post-doctoral training, gained an academic position, and published ground-breaking research. For those in neuroscience, chemistry, and ocean science, they will have also successfully established a productive research group ('lab') of students and post-doctoral researchers.

The other big take-home is public institutions, even the very selective ones with similar SAT scores as the private schools, have low production of future Sloan fellows in all of the fields. Across the board, Liberals Arts Colleges outproduce on this metric. However, public institutions do outproduce the less selective private research universities across the board. In fact the less selective private research universities by and large do not produce future Sloan fellows.

Carnegie School Classifications
-------------------------------

This analysis focuses on comparting Liberal Arts colleges to research universities. The idea is to examine whether there is a difference in the production of future Sloan Fellows based on the type of institution (research university versus undergraduate institution).

I used these Carnegie Classifications

-   15 = Doctoral Universities: Highest Research Activity
-   16 = Doctoral Universities: Higher Research Activity
-   18 = Master's Colleges & Universities: Larger Programs
-   21 = Baccalaureate Colleges: Arts & Sciences Focus

I labelled each institution by type: Liberal Arts colleges, technical research universities, and research universities but not a technical institute. The research universities were further separated into public and private, but the technical institutes were not. Only private Liberal Arts colleges were included in the analysis as there were too few public Liberal Arts colleges with data.

SAT Math Score Bands
--------------------

I divided schools into three SAT Math score bands based on the upper 75% math scores.

-   sat1: SAT Math upper 75% 760-800
-   sat2: SAT Math upper 75% 690-759
-   sat3: SAT Math upper 75% 640-689

Some Liberal Arts colleges were missing SAT data in the Scorecard database and I filled those in from www.collegedata.com.

Tier Groups
-----------

I created 'tiers' based on the Carnegie Classifications and the SAT Math bands.

-   T1, T2, T3: technical institutes in the SAT1, SAT2, and SAT3 bands
-   Pr1, Pr2, Pr3: private research universities in the 3 SAT bands
-   Pu1, Pu2, Pu3: public research universities in the 3 SAT bands
-   L1, L2, L3: Liberal Arts colleges in the 3 SAT bands

Number of undergraduates with SAT Math 700-800
----------------------------------------------

The number of undergraduates with SAT Math 700-800 ('Size') was estimated by multiplying the total undergraduate enrollment ('Tot.Size') by the fraction of incoming freshman with SAT Math scores between 700-800 ('SAT.700.800').

|                                 |  Size|  Tot.Size|  SAT.700.800|
|---------------------------------|-----:|---------:|------------:|
| brandeis university             |  2129|      3715|         0.57|
| case western reserve university |  2662|      4807|         0.55|
| dartmouth college               |  2703|      4184|         0.65|
| rice university                 |  3112|      3888|         0.80|
| tufts university                |  3250|      5143|         0.63|

When I compute the per-capita rate of Sloan Fellow production, I will be dividing the number of Fellows by the 'Size' column. This is to attempt to compare 'apples to apples'. Yes, more Sloan Fellows attended Princeton as undergraduates. Is this something about Princeton, or simply that Princeton has an unusually high fraction of undergraduates who are strong academically, esp. in math.

Bacculareate origin of Math, Physics and Economics Sloan Fellows
----------------------------------------------------------------

The number of undergraduates (in thousands) in each bar is shown in parentheses below the number of Sloan Fellows. The bottom bar plot shows the per capita production of future Sloan Fellows.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/barplot1-1.png)

The T1 and Pr1 groups are dominated by a handful of institutions
----------------------------------------------------------------

The T1 and Pr1 groups have the highest per-capita production of future Sloan Fellows, but these groups are dominated by a few institutions, namely MIT, CalTech, Harvard and Princeton. These four institutions produce 35.8 percent of the future Sloan fellows in math, physics and economics.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/pie.math-1.png)

Math, Physics and Economics future Sloan Fellows with MIT, Caltech, Harvard and Princeton removed
-------------------------------------------------------------------------------------------------

What about the other 64.2 percent of Sloan fellows? To look at this, I remove MIT, CalTech, Harvard and Princeton. With these four outlier schools removed, the Liberal Arts colleges have the highest per-capita production in all SAT Math bands compared to research universities (private or public) in the same SAT Math band.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/barplot.math2-1.png)

Neuroscience, Chemistry, Computational Biology and Ocean Science future Sloan Fellows
-------------------------------------------------------------------------------------

This shows the same bar-plot for Neuroscience, Chemistry, and Ocean Sciences. The number of undergraduates (n in thousands) and number of institutions (i) is shown below the number of Sloan Fellows for each bar.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/barplot2-1.png)

Again the majority of Sloan Fellows come from the same four schools
-------------------------------------------------------------------

MIT, CalTech, Harvard and Princeton produce 21.5 percent of the future Sloan fellows in neuroscience, chemistry, computational biology and ocean science.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/pie.neuro-1.png)

To an extent this is true for the Liberal Arts Colleges also
------------------------------------------------------------

However the sample sizes are small (only 13 fellows in the L1 group on the left), and the difference between 2 versus 3 Sloan Fellows looks large in the pie but can occur due the chance. Williams and Swarthmore are schools which one would expect to have more Sloan Fellows, but one would also expect Amherst and Bowdoin to be similarly high.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/pie.neuro2-1.png)

Neuroscience, Chemistry, Computational Biology and Ocean Sciences future Sloan Fellows with MIT, Caltech, Harvard and Princeton removed
---------------------------------------------------------------------------------------------------------------------------------------

With these 4 schools removed, the Liberal Arts colleges have the highest per-capita production in all SAT Math bands.

![](\blog_files\2017-5-20-sloan-sat_files/figure-markdown_github/barplot.neuro.2-1.png)

Data
====

Math and Physics
----------------

This shows the institutions in each group along with the number of Sloan Fellows. I've added the SAT Math upper 75% score for each school. The Tot.Size is the undergraduate enrollment and 'Size' is the estimated number of undergraduates with an SAT score of 700-800.

#### T1

|                                             |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|---------------------------------------------|--------:|---------:|-----:|-----------:|------------:|
| california institute of technology          |       12|       983|   983|         800|         1.00|
| georgia institute of technology-main campus |        2|     13996|  9043|         770|         0.65|
| massachusetts institute of technology       |       10|      4476|  4217|         800|         0.94|
| rensselaer polytechnic institute            |        2|      5557|  3590|         770|         0.65|

#### T2

|                                  |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|----------------------------------|--------:|---------:|-----:|-----------:|------------:|
| colorado school of mines         |        0|      4383|  1613|         720|         0.37|
| illinois institute of technology |        0|      3046|  1359|         740|         0.45|
| stevens institute of technology  |        0|      2842|  1466|         745|         0.52|

#### T3

|                                                         |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|---------------------------------------------------------|--------:|---------:|-----:|-----------:|------------:|
| california polytechnic state university-san luis obispo |        0|     19177|  3308|         680|         0.17|
| florida institute of technology                         |        0|      3348|   462|         660|         0.14|
| lawrence technological university                       |        0|      2798|   277|         650|         0.10|
| michigan technological university                       |        0|      5576|   997|         680|         0.18|
| new jersey institute of technology                      |        0|      6748|  1003|         670|         0.15|
| virginia polytechnic institute and state university     |        0|     24191|  4325|         680|         0.18|

#### Pr1

|                                   |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|-----------------------------------|--------:|---------:|------:|-----------:|------------:|
| brandeis university               |        1|      3715|   2129|         770|         0.57|
| brown university                  |        6|      6264|   3886|         780|         0.62|
| carnegie mellon university        |        2|      5819|   4364|         800|         0.75|
| case western reserve university   |        1|      4807|   2662|         760|         0.55|
| columbia university               |        7|      8100|   6075|         790|         0.75|
| cornell university                |        4|     14195|   9171|         770|         0.65|
| dartmouth college                 |        2|      4184|   2703|         770|         0.65|
| duke university                   |        2|      6480|   4860|         790|         0.75|
| georgetown university             |        1|      7211|   3993|         760|         0.55|
| harvard university                |       33|      7236|   5753|         800|         0.80|
| johns hopkins university          |        1|      6039|   4188|         770|         0.69|
| northeastern university           |        0|     13492|   8527|         760|         0.63|
| northwestern university           |        1|      8725|   6544|         790|         0.75|
| princeton university              |       27|      5258|   4181|         800|         0.80|
| rice university                   |        5|      3888|   3112|         790|         0.80|
| stanford university               |       11|      7018|   5264|         790|         0.75|
| tufts university                  |        0|      5143|   3250|         760|         0.63|
| university of chicago             |       12|      5729|   4694|         800|         0.82|
| university of notre dame          |        1|      8427|   5445|         770|         0.65|
| university of pennsylvania        |        2|     10678|   7476|         780|         0.70|
| university of southern california |        0|     18392|  10184|         760|         0.55|
| vanderbilt university             |        0|      6818|   5756|         800|         0.84|
| washington university in st louis |        4|      6913|   5836|         800|         0.84|
| yale university                   |        8|      5473|   4105|         800|         0.75|

#### Pr2

|                               |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|-------------------------------|--------:|---------:|------:|-----------:|------------:|
| bentley university            |        0|      4190|    836|         690|         0.20|
| boston college                |        0|      9483|   4232|         740|         0.45|
| boston university             |        0|     16457|   6247|         730|         0.38|
| emory university              |        0|      7730|   3865|         750|         0.50|
| george washington university  |        0|     10433|   2608|         700|         0.25|
| lehigh university             |        0|      5034|   2247|         740|         0.45|
| new york university           |        2|     24539|  10478|         740|         0.43|
| santa clara university        |        0|      5447|   1634|         710|         0.30|
| southern methodist university |        0|      6340|   1901|         710|         0.30|
| tulane university             |        0|      7892|   1973|         700|         0.25|
| university of miami           |        0|     10828|   4110|         730|         0.38|
| university of tulsa           |        0|      3441|    860|         700|         0.25|

#### Pr3

|                                |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|--------------------------------|--------:|---------:|-----:|-----------:|------------:|
| american university            |        0|      7094|   797|         660|         0.11|
| baylor university              |        0|     13801|  1936|         670|         0.14|
| bethel university-saint paul   |        0|      2936|   260|         640|         0.09|
| brigham young university-provo |        0|     27163|  4686|         680|         0.17|
| butler university              |        0|      4013|   434|         650|         0.11|
| chapman university             |        0|      6211|   479|         650|         0.08|
| creighton university           |        0|      3977|   553|         665|         0.14|
| drake university               |        0|      3290|   551|         670|         0.17|
| drexel university              |        0|     16681|  2340|         670|         0.14|
| emerson college                |        0|      3757|   290|         650|         0.08|
| fordham university             |        0|      8485|  1464|         680|         0.17|
| gonzaga university             |        0|      4754|   367|         650|         0.08|
| loyola marymount university    |        0|      6064|   682|         660|         0.11|
| marquette university           |        0|      8212|   634|         650|         0.08|
| rockhurst university           |        0|      1671|   233|         650|         0.14|
| rollins college                |        0|      2670|   313|         660|         0.12|
| saint louis university         |        0|      7822|  1162|         670|         0.15|
| seattle university             |        0|      4415|   350|         640|         0.08|
| spring arbor university        |        0|      2632|   327|         645|         0.12|
| syracuse university            |        0|     14768|  1802|         660|         0.12|
| texas christian university     |        0|      8600|   763|         650|         0.09|
| university of dallas           |        0|      1324|   105|         640|         0.08|
| university of dayton           |        0|      8305|   658|         640|         0.08|
| university of denver           |        0|      5629|   633|         660|         0.11|
| university of detroit mercy    |        0|      2677|   481|         670|         0.18|
| yeshiva university             |        0|      2814|   518|         680|         0.18|

#### Pu1

|                                            |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|--------------------------------------------|--------:|---------:|------:|-----------:|------------:|
| university of california-berkeley          |        9|     27126|  14125|         770|         0.52|
| university of california-san diego         |        2|     24801|  11887|         760|         0.48|
| university of illinois at urbana-champaign |        2|     31875|  23906|         790|         0.75|
| university of michigan-ann arbor           |        3|     28217|  15624|         760|         0.55|

#### Pu2

|                                               |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|-----------------------------------------------|--------:|---------:|------:|-----------:|------------:|
| college of william and mary                   |        0|      6256|   2671|         740|         0.43|
| cuny bernard m baruch college                 |        0|     14420|   2955|         690|         0.20|
| michigan state university                     |        1|     38395|   8535|         690|         0.22|
| missouri university of science and technology |        0|      6418|   1604|         700|         0.25|
| ohio state university-main campus             |        0|     43733|  16601|         730|         0.38|
| purdue university-main campus                 |        0|     29977|   7494|         700|         0.25|
| rutgers university-new brunswick              |        1|     34094|   8524|         700|         0.25|
| stony brook university                        |        1|     16170|   4765|         710|         0.29|
| suny at binghamton                            |        0|     13372|   3343|         700|         0.25|
| university of california-davis                |        0|     27547|   6887|         700|         0.25|
| university of california-irvine               |        0|     24474|   5394|         690|         0.22|
| university of california-los angeles          |        1|     29627|  12550|         750|         0.42|
| university of california-santa barbara        |        3|     20237|   5699|         710|         0.28|
| university of connecticut                     |        0|     18016|   3767|         690|         0.21|
| university of florida                         |        2|     31879|   6666|         690|         0.21|
| university of iowa                            |        2|     21486|   5372|         700|         0.25|
| university of maryland-college park           |        3|     26532|  10072|         730|         0.38|
| university of minnesota-twin cities           |        2|     30135|  13205|         750|         0.44|
| university of north carolina at chapel hill   |        0|     17908|   6141|         720|         0.34|
| university of pittsburgh-pittsburgh campus    |        0|     18474|   3785|         690|         0.20|
| university of texas at austin                 |        5|     38914|  12705|         720|         0.33|
| university of texas at dallas                 |        0|     14300|   3575|         700|         0.25|
| university of virginia-main campus            |        6|     15515|   6625|         740|         0.43|
| university of washington-seattle campus       |        0|     29468|   7367|         700|         0.25|
| university of wisconsin-madison               |        1|     29302|  12046|         740|         0.41|

#### Pu3

|                                            |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|--------------------------------------------|--------:|---------:|-----:|-----------:|------------:|
| arizona state university-tempe             |        0|     39316|  3487|         640|         0.09|
| auburn university                          |        0|     20514|  1918|         645|         0.09|
| clemson university                         |        0|     17083|  2819|         680|         0.16|
| college of new jersey                      |        0|      6407|   899|         670|         0.14|
| cuny city college                          |        0|     12175|  1680|         660|         0.14|
| cuny hunter college                        |        0|     15778|  1560|         650|         0.10|
| florida state university                   |        0|     32432|  1489|         640|         0.05|
| indiana university-bloomington             |        0|     32252|  4209|         660|         0.13|
| iowa state university                      |        2|     28336|  5568|         680|         0.20|
| miami university-oxford                    |        0|     15454|  2763|         680|         0.18|
| mississippi state university               |        0|     15800|  1662|         640|         0.11|
| north carolina state university at raleigh |        0|     22925|  3572|         680|         0.16|
| north dakota state university-main campus  |        0|     11763|  1981|         665|         0.17|
| pennsylvania state university-main campus  |        2|     39958|  5938|         670|         0.15|
| southern illinois university-carbondale    |        0|     13171|  1480|         640|         0.11|
| texas a and m university-college station   |        0|     46941|  6975|         670|         0.15|
| university at buffalo                      |        0|     19488|  1729|         650|         0.09|
| university of alabama at birmingham        |        0|     11383|  1279|         640|         0.11|
| university of alabama in huntsville        |        0|      5451|   589|         650|         0.11|
| university of california-riverside         |        1|     18784|  2186|         650|         0.12|
| university of california-santa cruz        |        0|     16277|  2015|         650|         0.12|
| university of central florida              |        0|     52280|  3022|         640|         0.06|
| university of cincinnati-main campus       |        0|     23795|  3284|         660|         0.14|
| university of colorado boulder             |        0|     25873|  3376|         660|         0.13|
| university of delaware                     |        0|     18222|  2223|         660|         0.12|
| university of georgia                      |        0|     26738|  3751|         670|         0.14|
| university of houston                      |        0|     31643|  2180|         640|         0.07|
| university of illinois at chicago          |        0|     16635|  2296|         660|         0.14|
| university of kentucky                     |        0|     21725|  2114|         640|         0.10|
| university of maryland-baltimore county    |        0|     11274|  1582|         670|         0.14|
| university of massachusetts-amherst        |        0|     21864|  3068|         670|         0.14|
| university of massachusetts-lowell         |        0|     12190|   840|         640|         0.07|
| university of michigan-dearborn            |        0|      6906|   945|         658|         0.14|
| university of michigan-flint               |        0|      6565|  1304|         680|         0.20|
| university of minnesota-duluth             |        0|      9120|   887|         640|         0.10|
| university of missouri-columbia            |        1|     27276|  3764|         660|         0.14|
| university of missouri-kansas city         |        0|      8127|  1645|         680|         0.20|
| university of missouri-st louis            |        0|      8936|  1435|         660|         0.16|
| university of nebraska-lincoln             |        0|     19979|  2889|         660|         0.14|
| university of new orleans                  |        0|      6742|  1218|         670|         0.18|
| university of north carolina wilmington    |        0|     12686|   582|         640|         0.05|
| university of oklahoma-norman campus       |        0|     20538|  3329|         670|         0.16|
| university of puerto rico-rio piedras      |        0|     12086|  2179|         673|         0.18|
| university of south carolina-columbia      |        0|     24623|  2494|         660|         0.10|
| university of tennessee-knoxville          |        1|     21396|  1695|         640|         0.08|
| university of utah                         |        1|     22804|  2654|         650|         0.12|
| university of vermont                      |        0|      9958|   985|         650|         0.10|

#### L1

|                              |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|------------------------------|--------:|---------:|-----:|-----------:|------------:|
| amherst college              |        1|      1792|  1158|         770|         0.65|
| bowdoin college              |        0|      1797|  1202|         770|         0.67|
| carleton college             |        2|      2042|  1131|         760|         0.55|
| claremont mckenna college    |        0|      1293|   897|         770|         0.69|
| grinnell college             |        0|      1670|   925|         760|         0.55|
| harvey mudd college          |        2|       802|   756|         800|         0.94|
| illinois wesleyan university |        0|      1883|  1043|         760|         0.55|
| pomona college               |        0|      1635|  1134|         770|         0.69|
| swarthmore college           |        1|      1530|   989|         770|         0.65|
| williams college             |        0|      2019|  1224|         770|         0.61|

#### L2

|                                  |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|----------------------------------|--------:|---------:|-----:|-----------:|------------:|
| augustana college                |        0|      2469|   560|         690|         0.23|
| barnard college                  |        0|      2556|   767|         710|         0.30|
| bates college                    |        1|      1773|   466|         703|         0.26|
| bryn mawr college                |        0|      1303|   467|         730|         0.36|
| bucknell university              |        0|      3528|  1210|         720|         0.34|
| colby college                    |        0|      1847|   633|         720|         0.34|
| colgate university               |        2|      2865|  1432|         750|         0.50|
| college of the holy cross        |        0|      2754|   531|         690|         0.19|
| colorado college                 |        1|      2036|   611|         710|         0.30|
| connecticut college              |        0|      1875|   469|         700|         0.25|
| davidson college                 |        0|      1765|   605|         720|         0.34|
| dickinson college                |        0|      2315|   579|         700|         0.25|
| franklin and marshall college    |        0|      2182|   859|         730|         0.39|
| hamilton college                 |        0|      1890|   945|         740|         0.50|
| haverford college                |        0|      1187|   594|         740|         0.50|
| kalamazoo college                |        0|      1431|   315|         690|         0.22|
| kenyon college                   |        0|      1651|   330|         690|         0.20|
| lafayette college                |        0|      2471|   847|         720|         0.34|
| lawrence university              |        1|      1483|   546|         730|         0.37|
| macalester college               |        2|      2053|   844|         735|         0.41|
| middlebury college               |        0|      2498|  1067|         740|         0.43|
| mount holyoke college            |        0|      2161|   828|         735|         0.38|
| oberlin college                  |        0|      2961|  1015|         720|         0.34|
| occidental college               |        0|      2023|   506|         700|         0.25|
| pitzer college                   |        0|      1076|   381|         720|         0.35|
| reed college                     |        1|      1335|   526|         730|         0.39|
| rhodes college                   |        0|      2007|   411|         690|         0.20|
| scripps college                  |        0|       962|   289|         710|         0.30|
| smith college                    |        0|      2563|   879|         720|         0.34|
| soka university of america       |        0|       411|   118|         710|         0.29|
| st olaf college                  |        0|      2990|   645|         690|         0.22|
| trinity college                  |        0|      2262|   566|         700|         0.25|
| union college of schenectady, ny |        0|      2204|   780|         720|         0.35|
| university of richmond           |        0|      3223|  1105|         720|         0.34|
| vassar college                   |        1|      2389|  1123|         740|         0.47|
| washington and lee university    |        0|      1880|   868|         730|         0.46|
| wellesley college                |        0|      2172|   969|         740|         0.45|
| wesleyan university              |        1|      2907|  1241|         740|         0.43|
| wheaton college of wheaton, il   |        0|      2402|   600|         700|         0.25|
| whitman college                  |        1|      1480|   430|         710|         0.29|

#### L3

|                                 |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|---------------------------------|--------:|---------:|-----:|-----------:|------------:|
| agnes scott college             |        0|       802|    78|         640|         0.10|
| albion college                  |        0|      1249|   111|         640|         0.09|
| austin college                  |        0|      1272|   126|         650|         0.10|
| bard college                    |        0|      2021|   361|         680|         0.18|
| beloit college                  |        0|      1225|   102|         645|         0.08|
| centre college                  |        0|      1379|   254|         680|         0.18|
| college of wooster              |        0|      2029|   302|         670|         0.15|
| concordia college at moorhead   |        0|      2296|    49|         660|         0.02|
| cornell college                 |        0|      1082|   126|         650|         0.12|
| denison university              |        0|      2265|   391|         680|         0.17|
| depauw university               |        0|      2185|   246|         660|         0.11|
| earlham college                 |        0|       942|   162|         680|         0.17|
| furman university               |        0|      2796|   341|         660|         0.12|
| gettysburg college              |        0|      2437|   352|         680|         0.14|
| gordon college                  |        0|      1703|   166|         640|         0.10|
| gustavus adolphus college       |        0|      2455|   447|         675|         0.18|
| hendrix college                 |        0|      1322|   173|         660|         0.13|
| hobart william smith colleges   |        0|      2344|   247|         670|         0.11|
| hope college                    |        0|      3312|   358|         650|         0.11|
| knox college                    |        0|      1376|   102|         660|         0.07|
| lewis and clark college         |        0|      2039|   242|         670|         0.12|
| luther college                  |        0|      2326|   226|         640|         0.10|
| muhlenberg college              |        0|      2332|   262|         660|         0.11|
| ripon college                   |        0|       820|   173|         680|         0.21|
| sarah lawrence college          |        0|      1366|   258|         680|         0.19|
| sewanee-university of the south |        0|      1616|   125|         650|         0.08|
| skidmore college                |        0|      2612|   467|         680|         0.18|
| st john's college               |        0|       429|    77|         680|         0.18|
| st lawrence university          |        0|      2282|   278|         660|         0.12|
| thomas aquinas college          |        0|       378|    17|         640|         0.05|
| transylvania university         |        0|      1014|   140|         660|         0.14|
| university of puget sound       |        0|      2550|   226|         650|         0.09|
| wabash college                  |        0|       923|    82|         640|         0.09|
| washington college              |        0|      1408|    97|         640|         0.07|
| westmont college                |        1|      1297|   115|         640|         0.09|
| wheaton college of norton, ma   |        0|      1575|   219|         665|         0.14|
| willamette university           |        0|      2009|   199|         650|         0.10|
| wofford college                 |        0|      1654|   131|         640|         0.08|

Neuroscience, Chemistry, Computational Biology and Ocean Sciences
-----------------------------------------------------------------

#### T1

|                                             |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|---------------------------------------------|--------:|---------:|-----:|-----------:|------------:|
| california institute of technology          |        9|       983|   983|         800|         1.00|
| georgia institute of technology-main campus |        0|     13996|  9043|         770|         0.65|
| massachusetts institute of technology       |       21|      4476|  4217|         800|         0.94|
| rensselaer polytechnic institute            |        0|      5557|  3590|         770|         0.65|

#### T2

|                                  |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|----------------------------------|--------:|---------:|-----:|-----------:|------------:|
| colorado school of mines         |        0|      4383|  1613|         720|         0.37|
| illinois institute of technology |        0|      3046|  1359|         740|         0.45|
| stevens institute of technology  |        0|      2842|  1466|         745|         0.52|

#### T3

|                                                         |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|---------------------------------------------------------|--------:|---------:|-----:|-----------:|------------:|
| california polytechnic state university-san luis obispo |        1|     19177|  3308|         680|         0.17|
| florida institute of technology                         |        0|      3348|   462|         660|         0.14|
| lawrence technological university                       |        0|      2798|   277|         650|         0.10|
| michigan technological university                       |        0|      5576|   997|         680|         0.18|
| new jersey institute of technology                      |        0|      6748|  1003|         670|         0.15|
| virginia polytechnic institute and state university     |        0|     24191|  4325|         680|         0.18|

#### Pr1

|                                   |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|-----------------------------------|--------:|---------:|------:|-----------:|------------:|
| brandeis university               |        3|      3715|   2129|         770|         0.57|
| brown university                  |        6|      6264|   3886|         780|         0.62|
| carnegie mellon university        |        3|      5819|   4364|         800|         0.75|
| case western reserve university   |        0|      4807|   2662|         760|         0.55|
| columbia university               |        5|      8100|   6075|         790|         0.75|
| cornell university                |        7|     14195|   9171|         770|         0.65|
| dartmouth college                 |        6|      4184|   2703|         770|         0.65|
| duke university                   |        3|      6480|   4860|         790|         0.75|
| georgetown university             |        1|      7211|   3993|         760|         0.55|
| harvard university                |       22|      7236|   5753|         800|         0.80|
| johns hopkins university          |        2|      6039|   4188|         770|         0.69|
| northeastern university           |        0|     13492|   8527|         760|         0.63|
| northwestern university           |        1|      8725|   6544|         790|         0.75|
| princeton university              |       13|      5258|   4181|         800|         0.80|
| rice university                   |        4|      3888|   3112|         790|         0.80|
| stanford university               |       12|      7018|   5264|         790|         0.75|
| tufts university                  |        2|      5143|   3250|         760|         0.63|
| university of chicago             |        4|      5729|   4694|         800|         0.82|
| university of notre dame          |        1|      8427|   5445|         770|         0.65|
| university of pennsylvania        |        3|     10678|   7476|         780|         0.70|
| university of southern california |        3|     18392|  10184|         760|         0.55|
| vanderbilt university             |        0|      6818|   5756|         800|         0.84|
| washington university in st louis |        6|      6913|   5836|         800|         0.84|
| yale university                   |        4|      5473|   4105|         800|         0.75|

#### Pr2

|                               |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|-------------------------------|--------:|---------:|------:|-----------:|------------:|
| bentley university            |        0|      4190|    836|         690|         0.20|
| boston college                |        1|      9483|   4232|         740|         0.45|
| boston university             |        0|     16457|   6247|         730|         0.38|
| emory university              |        1|      7730|   3865|         750|         0.50|
| george washington university  |        0|     10433|   2608|         700|         0.25|
| lehigh university             |        1|      5034|   2247|         740|         0.45|
| new york university           |        4|     24539|  10478|         740|         0.43|
| santa clara university        |        0|      5447|   1634|         710|         0.30|
| southern methodist university |        1|      6340|   1901|         710|         0.30|
| tulane university             |        0|      7892|   1973|         700|         0.25|
| university of miami           |        0|     10828|   4110|         730|         0.38|
| university of tulsa           |        0|      3441|    860|         700|         0.25|

#### Pr3

|                                |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|--------------------------------|--------:|---------:|-----:|-----------:|------------:|
| american university            |        0|      7094|   797|         660|         0.11|
| baylor university              |        1|     13801|  1936|         670|         0.14|
| bethel university-saint paul   |        0|      2936|   260|         640|         0.09|
| brigham young university-provo |        0|     27163|  4686|         680|         0.17|
| butler university              |        0|      4013|   434|         650|         0.11|
| chapman university             |        0|      6211|   479|         650|         0.08|
| creighton university           |        0|      3977|   553|         665|         0.14|
| drake university               |        0|      3290|   551|         670|         0.17|
| drexel university              |        0|     16681|  2340|         670|         0.14|
| emerson college                |        0|      3757|   290|         650|         0.08|
| fordham university             |        0|      8485|  1464|         680|         0.17|
| gonzaga university             |        1|      4754|   367|         650|         0.08|
| loyola marymount university    |        0|      6064|   682|         660|         0.11|
| marquette university           |        1|      8212|   634|         650|         0.08|
| rockhurst university           |        0|      1671|   233|         650|         0.14|
| rollins college                |        0|      2670|   313|         660|         0.12|
| saint louis university         |        1|      7822|  1162|         670|         0.15|
| seattle university             |        0|      4415|   350|         640|         0.08|
| spring arbor university        |        0|      2632|   327|         645|         0.12|
| syracuse university            |        0|     14768|  1802|         660|         0.12|
| texas christian university     |        0|      8600|   763|         650|         0.09|
| university of dallas           |        0|      1324|   105|         640|         0.08|
| university of dayton           |        0|      8305|   658|         640|         0.08|
| university of denver           |        0|      5629|   633|         660|         0.11|
| university of detroit mercy    |        0|      2677|   481|         670|         0.18|
| yeshiva university             |        0|      2814|   518|         680|         0.18|

#### Pu1

|                                            |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|--------------------------------------------|--------:|---------:|------:|-----------:|------------:|
| university of california-berkeley          |       11|     27126|  14125|         770|         0.52|
| university of california-san diego         |        0|     24801|  11887|         760|         0.48|
| university of illinois at urbana-champaign |        6|     31875|  23906|         790|         0.75|
| university of michigan-ann arbor           |        5|     28217|  15624|         760|         0.55|

#### Pu2

|                                               |  Fellows|  Tot.Size|   Size|  SAT.Math75|  SAT.700.800|
|-----------------------------------------------|--------:|---------:|------:|-----------:|------------:|
| college of william and mary                   |        4|      6256|   2671|         740|         0.43|
| cuny bernard m baruch college                 |        0|     14420|   2955|         690|         0.20|
| michigan state university                     |        2|     38395|   8535|         690|         0.22|
| missouri university of science and technology |        0|      6418|   1604|         700|         0.25|
| ohio state university-main campus             |        2|     43733|  16601|         730|         0.38|
| purdue university-main campus                 |        0|     29977|   7494|         700|         0.25|
| rutgers university-new brunswick              |        1|     34094|   8524|         700|         0.25|
| stony brook university                        |        0|     16170|   4765|         710|         0.29|
| suny at binghamton                            |        0|     13372|   3343|         700|         0.25|
| university of california-davis                |        3|     27547|   6887|         700|         0.25|
| university of california-irvine               |        1|     24474|   5394|         690|         0.22|
| university of california-los angeles          |        5|     29627|  12550|         750|         0.42|
| university of california-santa barbara        |        0|     20237|   5699|         710|         0.28|
| university of connecticut                     |        0|     18016|   3767|         690|         0.21|
| university of florida                         |        1|     31879|   6666|         690|         0.21|
| university of iowa                            |        1|     21486|   5372|         700|         0.25|
| university of maryland-college park           |        9|     26532|  10072|         730|         0.38|
| university of minnesota-twin cities           |        2|     30135|  13205|         750|         0.44|
| university of north carolina at chapel hill   |        6|     17908|   6141|         720|         0.34|
| university of pittsburgh-pittsburgh campus    |        0|     18474|   3785|         690|         0.20|
| university of texas at austin                 |        2|     38914|  12705|         720|         0.33|
| university of texas at dallas                 |        0|     14300|   3575|         700|         0.25|
| university of virginia-main campus            |        3|     15515|   6625|         740|         0.43|
| university of washington-seattle campus       |        1|     29468|   7367|         700|         0.25|
| university of wisconsin-madison               |        6|     29302|  12046|         740|         0.41|

#### Pu3

|                                            |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|--------------------------------------------|--------:|---------:|-----:|-----------:|------------:|
| arizona state university-tempe             |        1|     39316|  3487|         640|         0.09|
| auburn university                          |        0|     20514|  1918|         645|         0.09|
| clemson university                         |        0|     17083|  2819|         680|         0.16|
| college of new jersey                      |        0|      6407|   899|         670|         0.14|
| cuny city college                          |        0|     12175|  1680|         660|         0.14|
| cuny hunter college                        |        1|     15778|  1560|         650|         0.10|
| florida state university                   |        0|     32432|  1489|         640|         0.05|
| indiana university-bloomington             |        2|     32252|  4209|         660|         0.13|
| iowa state university                      |        0|     28336|  5568|         680|         0.20|
| miami university-oxford                    |        0|     15454|  2763|         680|         0.18|
| mississippi state university               |        1|     15800|  1662|         640|         0.11|
| north carolina state university at raleigh |        1|     22925|  3572|         680|         0.16|
| north dakota state university-main campus  |        0|     11763|  1981|         665|         0.17|
| pennsylvania state university-main campus  |        7|     39958|  5938|         670|         0.15|
| southern illinois university-carbondale    |        0|     13171|  1480|         640|         0.11|
| texas a and m university-college station   |        2|     46941|  6975|         670|         0.15|
| university at buffalo                      |        0|     19488|  1729|         650|         0.09|
| university of alabama at birmingham        |        0|     11383|  1279|         640|         0.11|
| university of alabama in huntsville        |        0|      5451|   589|         650|         0.11|
| university of california-riverside         |        1|     18784|  2186|         650|         0.12|
| university of california-santa cruz        |        1|     16277|  2015|         650|         0.12|
| university of central florida              |        1|     52280|  3022|         640|         0.06|
| university of cincinnati-main campus       |        0|     23795|  3284|         660|         0.14|
| university of colorado boulder             |        2|     25873|  3376|         660|         0.13|
| university of delaware                     |        2|     18222|  2223|         660|         0.12|
| university of georgia                      |        1|     26738|  3751|         670|         0.14|
| university of houston                      |        0|     31643|  2180|         640|         0.07|
| university of illinois at chicago          |        0|     16635|  2296|         660|         0.14|
| university of kentucky                     |        0|     21725|  2114|         640|         0.10|
| university of maryland-baltimore county    |        1|     11274|  1582|         670|         0.14|
| university of massachusetts-amherst        |        0|     21864|  3068|         670|         0.14|
| university of massachusetts-lowell         |        0|     12190|   840|         640|         0.07|
| university of michigan-dearborn            |        0|      6906|   945|         658|         0.14|
| university of michigan-flint               |        0|      6565|  1304|         680|         0.20|
| university of minnesota-duluth             |        0|      9120|   887|         640|         0.10|
| university of missouri-columbia            |        1|     27276|  3764|         660|         0.14|
| university of missouri-kansas city         |        0|      8127|  1645|         680|         0.20|
| university of missouri-st louis            |        0|      8936|  1435|         660|         0.16|
| university of nebraska-lincoln             |        0|     19979|  2889|         660|         0.14|
| university of new orleans                  |        1|      6742|  1218|         670|         0.18|
| university of north carolina wilmington    |        0|     12686|   582|         640|         0.05|
| university of oklahoma-norman campus       |        1|     20538|  3329|         670|         0.16|
| university of puerto rico-rio piedras      |        0|     12086|  2179|         673|         0.18|
| university of south carolina-columbia      |        0|     24623|  2494|         660|         0.10|
| university of tennessee-knoxville          |        1|     21396|  1695|         640|         0.08|
| university of utah                         |        2|     22804|  2654|         650|         0.12|
| university of vermont                      |        1|      9958|   985|         650|         0.10|

#### L1

|                              |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|------------------------------|--------:|---------:|-----:|-----------:|------------:|
| amherst college              |        0|      1792|  1158|         770|         0.65|
| bowdoin college              |        1|      1797|  1202|         770|         0.67|
| carleton college             |        1|      2042|  1131|         760|         0.55|
| claremont mckenna college    |        0|      1293|   897|         770|         0.69|
| grinnell college             |        0|      1670|   925|         760|         0.55|
| harvey mudd college          |        1|       802|   756|         800|         0.94|
| illinois wesleyan university |        1|      1883|  1043|         760|         0.55|
| pomona college               |        2|      1635|  1134|         770|         0.69|
| swarthmore college           |        3|      1530|   989|         770|         0.65|
| williams college             |        4|      2019|  1224|         770|         0.61|

#### L2

|                                  |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|----------------------------------|--------:|---------:|-----:|-----------:|------------:|
| augustana college                |        0|      2469|   560|         690|         0.23|
| barnard college                  |        0|      2556|   767|         710|         0.30|
| bates college                    |        1|      1773|   466|         703|         0.26|
| bryn mawr college                |        1|      1303|   467|         730|         0.36|
| bucknell university              |        0|      3528|  1210|         720|         0.34|
| colby college                    |        1|      1847|   633|         720|         0.34|
| colgate university               |        1|      2865|  1432|         750|         0.50|
| college of the holy cross        |        0|      2754|   531|         690|         0.19|
| colorado college                 |        1|      2036|   611|         710|         0.30|
| connecticut college              |        1|      1875|   469|         700|         0.25|
| davidson college                 |        0|      1765|   605|         720|         0.34|
| dickinson college                |        0|      2315|   579|         700|         0.25|
| franklin and marshall college    |        0|      2182|   859|         730|         0.39|
| hamilton college                 |        1|      1890|   945|         740|         0.50|
| haverford college                |        0|      1187|   594|         740|         0.50|
| kalamazoo college                |        0|      1431|   315|         690|         0.22|
| kenyon college                   |        0|      1651|   330|         690|         0.20|
| lafayette college                |        1|      2471|   847|         720|         0.34|
| lawrence university              |        1|      1483|   546|         730|         0.37|
| macalester college               |        4|      2053|   844|         735|         0.41|
| middlebury college               |        3|      2498|  1067|         740|         0.43|
| mount holyoke college            |        0|      2161|   828|         735|         0.38|
| oberlin college                  |        1|      2961|  1015|         720|         0.34|
| occidental college               |        0|      2023|   506|         700|         0.25|
| pitzer college                   |        1|      1076|   381|         720|         0.35|
| reed college                     |        2|      1335|   526|         730|         0.39|
| rhodes college                   |        0|      2007|   411|         690|         0.20|
| scripps college                  |        0|       962|   289|         710|         0.30|
| smith college                    |        2|      2563|   879|         720|         0.34|
| soka university of america       |        0|       411|   118|         710|         0.29|
| st olaf college                  |        1|      2990|   645|         690|         0.22|
| trinity college                  |        0|      2262|   566|         700|         0.25|
| union college of schenectady, ny |        0|      2204|   780|         720|         0.35|
| university of richmond           |        0|      3223|  1105|         720|         0.34|
| vassar college                   |        0|      2389|  1123|         740|         0.47|
| washington and lee university    |        0|      1880|   868|         730|         0.46|
| wellesley college                |        1|      2172|   969|         740|         0.45|
| wesleyan university              |        2|      2907|  1241|         740|         0.43|
| wheaton college of wheaton, il   |        0|      2402|   600|         700|         0.25|
| whitman college                  |        0|      1480|   430|         710|         0.29|

#### L3

|                                 |  Fellows|  Tot.Size|  Size|  SAT.Math75|  SAT.700.800|
|---------------------------------|--------:|---------:|-----:|-----------:|------------:|
| agnes scott college             |        0|       802|    78|         640|         0.10|
| albion college                  |        0|      1249|   111|         640|         0.09|
| austin college                  |        0|      1272|   126|         650|         0.10|
| bard college                    |        0|      2021|   361|         680|         0.18|
| beloit college                  |        0|      1225|   102|         645|         0.08|
| centre college                  |        0|      1379|   254|         680|         0.18|
| college of wooster              |        0|      2029|   302|         670|         0.15|
| concordia college at moorhead   |        1|      2296|    49|         660|         0.02|
| cornell college                 |        0|      1082|   126|         650|         0.12|
| denison university              |        0|      2265|   391|         680|         0.17|
| depauw university               |        0|      2185|   246|         660|         0.11|
| earlham college                 |        0|       942|   162|         680|         0.17|
| furman university               |        1|      2796|   341|         660|         0.12|
| gettysburg college              |        1|      2437|   352|         680|         0.14|
| gordon college                  |        0|      1703|   166|         640|         0.10|
| gustavus adolphus college       |        1|      2455|   447|         675|         0.18|
| hendrix college                 |        0|      1322|   173|         660|         0.13|
| hobart william smith colleges   |        0|      2344|   247|         670|         0.11|
| hope college                    |        1|      3312|   358|         650|         0.11|
| knox college                    |        0|      1376|   102|         660|         0.07|
| lewis and clark college         |        0|      2039|   242|         670|         0.12|
| luther college                  |        1|      2326|   226|         640|         0.10|
| muhlenberg college              |        0|      2332|   262|         660|         0.11|
| ripon college                   |        0|       820|   173|         680|         0.21|
| sarah lawrence college          |        0|      1366|   258|         680|         0.19|
| sewanee-university of the south |        0|      1616|   125|         650|         0.08|
| skidmore college                |        0|      2612|   467|         680|         0.18|
| st john's college               |        0|       429|    77|         680|         0.18|
| st lawrence university          |        0|      2282|   278|         660|         0.12|
| thomas aquinas college          |        0|       378|    17|         640|         0.05|
| transylvania university         |        0|      1014|   140|         660|         0.14|
| university of puget sound       |        1|      2550|   226|         650|         0.09|
| wabash college                  |        0|       923|    82|         640|         0.09|
| washington college              |        0|      1408|    97|         640|         0.07|
| westmont college                |        0|      1297|   115|         640|         0.09|
| wheaton college of norton, ma   |        0|      1575|   219|         665|         0.14|
| willamette university           |        0|      2009|   199|         650|         0.10|
| wofford college                 |        0|      1654|   131|         640|         0.08|
