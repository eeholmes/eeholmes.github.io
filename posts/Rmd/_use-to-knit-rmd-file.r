
# Use this code to run an Rmd File
# if eehutils loaded, use
# rmd_to_gfm(filename)

rmd_to_gfm = function(filename){
  require(here)
  inFile = paste0(here("posts","Rmd"),"/",filename)
  outFile = paste0(here("_posts"),"/",sub("Rmd","md",filename))
  figDir = paste0(here("posts","figures"),"/",sub("[.]Rmd","",filename),"/")
  opts_chunk$set(fig.path=figDir)
  knit(inFile, output=outFile)
  opts_chunk$set(fig.path="figure/")
}