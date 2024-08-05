get_precision <- function(x) {

  10^-(nchar(gsub("\\.", "", as.character(x))) - nchar(as.character(trunc(x))))

}
