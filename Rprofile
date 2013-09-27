#cat("Rprofile: --> loading devtools-package()\n")
#library(devtools)

devel.on <- function() {
  dev_mode(TRUE, path="~/development/R")
}

devel.off <- function() {
  dev_mode(FALSE)
}


#cat("Rprofile: --> setting AT repository\n")
#r = getOption("repos") # hard code the AT repo for CRAN
#r["CRAN"] = "http://cran.at.r-project.org"
#options(repos = r)
#rm(r)

#library(roxygen2)
#setwd("/home/bernhard/Working/R")
#rox <- function(path.in="sdcTable", path.out="sdcTable.rox") { roxygenize(path.in, path.out) }
#q <- function() { quit(save='no') }
#test <- function() { source("/home/bernhard/EclipseWS/Projekte/debug_dups.r"); }

#integer to binary
#bb<-function(i) if (i) paste(bb(i %/% 2), i %% 2, sep="") else ""

# return a named list of command line arguments
#
# Usage:
# call the R script thus
#   ./myfile.R --args myarg=something
# or
#   R CMD BATCH --args myarg=something myfile.R
#
# Then in R do
#   myargs <- getArgs()
# and myargs will be a named list
# > str(myargs)
# List of 2
# $ file : chr "myfile.R"
# $ myarg: chr "something"
getArgs <- function(defaults=NULL) {
  myargs <- gsub("^--","",commandArgs(TRUE))
  setopts <- !grepl("=",myargs)
  if(any(setopts))
    myargs[setopts] <- paste(myargs[setopts],"=notset",sep="")
  myargs.list <- strsplit(myargs,"=")
  myargs <- lapply(myargs.list,"[[",2 )
  names(myargs) <- lapply(myargs.list, "[[", 1)

  ## logicals
  if(any(setopts))
    myargs[setopts] <- TRUE

  ## defaults
  if(!is.null(defaults)) {
    defs.needed <- setdiff(names(defaults), names(myargs))
    if(length(defs.needed)) {
      myargs[ defs.needed ] <- defaults[ defs.needed ]
    }
  }
  myargs
}
