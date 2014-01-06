#!/usr/bin/env Rscript

library(rjson)

# centered
bar_cmd <- "\\\\\\c"

res <- fromJSON(system('i3-msg -t "get_workspaces"', intern=TRUE))
print(res)

ws <- sapply(res, function(x) x$name)
foc <- sapply(res, function(x) x$focused)

for ( i in 1:length(ws) ) {
	if ( foc[i] == TRUE ) {
		bar_cmd <- paste(bar_cmd, "\\\b2\\\f2",ws[i],"\\\br")
	} else {
		bar_cmd <- paste(bar_cmd, "\\\b1\\\f1",ws[i],"\\\br")
	}
}
cat(bar_cmd)
