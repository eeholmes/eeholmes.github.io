---
title: 'Another way to get R download stats'
date: 2015-04-23
permalink: /posts/2015/04/R-download-stats-2/
tags:
  - R Packages
---

This is code from Mark Scheuerell that was adapted from this post by Felix Schonbrodt for a different way to get download stats: <a href="http://www.nicebread.de/finally-tracking-cran-packages-downloads/">http://www.nicebread.de/finally-tracking-cran-packages-downloads/</a>
<pre>
## adadpted from code by Felix Schonbrodt
## http://www.nicebread.de/finally-tracking-cran-packages-downloads/


## ======================================================================
## Step 1: Download all log files
## ======================================================================

# start & end dates 12 months prior to current date
this.year = as.numeric(format(Sys.time(), "%Y"))
start <- as.Date( paste(this.year-1,"-",format(Sys.time(), "%m-%d"),sep="") )
today <- as.Date(Sys.time())

all_days <- seq(start, today, by = 'day')

year <- as.POSIXlt(all_days)$year + 1900
urls <- paste0('http://cran-logs.rstudio.com/', year, '/', all_days, '.csv.gz')

# only download the files you don't have:
missing_days <- setdiff(as.character(all_days), tools::file_path_sans_ext(dir("CRANlogs"), TRUE))

dir.create("CRANlogs")
for (i in 1:length(missing_days)) {
  print(paste0(i, "/", length(missing_days)))
  download.file(urls[i], paste0('CRANlogs/', missing_days[i], '.csv.gz'))
}


## ======================================================================
## Step 2: Load single data files into one big data.table
##
##   NOTE: this step takes FOREVER to run
## ======================================================================

file_list <- list.files("CRANlogs", full.names=TRUE)

logs <- list()
for (file in file_list) {
  print(paste("Reading", file, "..."))
  logs[[file]] <- read.table(file, header = TRUE, sep = ",", quote = "\"",
                             dec = ".", fill = TRUE, comment.char = "", as.is=TRUE)
}

# rbind together all files
library(data.table)
dat <- rbindlist(logs)

# add some keys and define variable types
dat[, date:=as.Date(date)]
dat[, package:=factor(package)]
dat[, country:=factor(country)]
dat[, weekday:=weekdays(date)]
dat[, week:=strftime(as.POSIXlt(date),format="%Y-%W")]

setkey(dat, package, date, week, country)

save(dat, file="CRANlogs/CRANlogs.RData")

# for later analyses: load the saved data.table
# load("CRANlogs/CRANlogs.RData")


## ======================================================================
## Step 3: Plot results
## ======================================================================

# vector of pkgs to compare
pkgs <- c("MARSS","dlm")

# vector of plot colors
clr <- seq(length(pkgs))

# downloads of selected pkgs by week
com1 <- dat[J(pkgs), length(unique(ip_id)), by=c("week", "package")]

# total downloads to date
com1[, sum(V1), by=package]

# cumulative downloads by week
com1$C1 <- (com1[, cumsum(V1), by=package])$V1

# nicer form for plotting
plotdat <- cast(com1,week ~ package, value="C1")

# plot cumulative downloads over time
matplot(plotdat,
        type="l", lty="solid", lwd=2, col=clr,
        ylab="Cumulative downloads",
        xlab="Week of 2013")

legend(x="topleft", legend=colnames(plotdat)[-1],
       lty="solid", lwd=2, col=clr)
</pre>
