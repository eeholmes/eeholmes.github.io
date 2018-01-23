
# Use this code to run an Rmd File
# if eehutils loaded, use
#
require(devtools)
install_github("eeholmes/eehutils")
require(eehutils)
filename="2017-5-31-FI-recursion-4.Rmd"
rmd_to_gfm(filename, pdf=TRUE)

rmd_to_gfm = function(filename, pdf=FALSE){
  require(here)
  inFile = paste0(here("posts", "Rmd"), "/", filename)
  outFile = paste0(here("_posts"), "/", sub("Rmd", "md", filename))
  figDir = paste0(here("posts", "figures"), "/", sub("[.]Rmd", 
                                                     "", filename), "/")
  opts_chunk$set(fig.path = figDir)
  knit(inFile, output = outFile)
  opts_chunk$set(fig.path = "figure/")
  pdfDir = here("posts", "pdfs")
  if (pdf) 
    render(inFile, output_format = "pdf_document", output_dir = pdfDir, 
           clean = TRUE)
}