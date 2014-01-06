#!/bin/env Rscript
library(rjson)

res <- fromJSON(system("i3-msg -t get_workspaces", intern=TRUE))
out <- paste(sapply(res, function(x) x$name), collapse="\n")

dmenu.selection <- system(paste('echo -e "" |dmenu -fn "-*-terminus-medium-*-*-*-14-*-*-*-*-*-*-*"'), intern=TRUE)

# move window to selected workspace
system(paste('i3-msg -q "workspace"', dmenu.selection))

