#A.
warpbreaks

#1. The breaks column is an integer while the remaining columns are neither an integer or numeric.
#breaks
print(is.numeric(warpbreaks$breaks))
print(is.integer(warpbreaks$breaks))

#wool
print(is.numeric(warpbreaks$wool))
print(is.integer(warpbreaks$wool))

#tension
print(is.numeric(warpbreaks$tension))
print(is.integer(warpbreaks$tension))

#2.No. If any column has decimal numbers than the datatype for that column will be integer

br <- as.integer(warpbreaks$breaks)
br

#3. 


#B
#1
txt <- readLines("practical/exampleFile.txt")
txt

#2
ef <- grepl("^/", txt)
(dat <- txt[!ef])

#3
library(lubridate)
dates <- c("21 May 2013")
dmy(dates)

#4. A
efs <- strsplit(dat, split = ";")
efs



standards <- lapply(efs,assignefs)
standards
#B
assignefs <- function(x) {
  out <- character(4)
  
  ef <- grepl("[[:alpha:]]", x)
  out[1] <- x[ef]
  
  ef <- which(as.numeric(x) < 64)
  out[2] <- ifelse(length(ef)>0, x [ef], NA)
  
  ef <- which(as.numeric(x) > 57.2 )
  out[3] <- ifelse(length(ef)>0, x[ef], NA)
  out
}
assignefs

#C 
A <- matrix(
  unlist(standards)
  , nrow=length(standards)
  , byrow= TRUE)
A

#D



