library(readr)

m1 <- read_csv("Movie Reviews/Movie1.csv")
m2 <- read_csv("Movie Reviews/Movie2.csv")
m3 <- read_csv("Movie Reviews/Movie3.csv")
m4 <- read_csv("Movie Reviews/Movie4.csv")
m5 <- read_csv("Movie Reviews/Movie5.csv")
m6 <- read_csv("Movie Reviews/Movie6.csv")
m7 <- read_csv("Movie Reviews/Movie7.csv")
m8 <- read_csv("Movie Reviews/Movie8.csv")
m9 <- read_csv("Movie Reviews/Movie9.csv")
m10 <- read_csv("Movie Reviews/Movie10.csv") 


(mergge <- rbind(m1, m2, m3, m4, m5, m6, m7, m8, m9, m10))

write_csv(mergge, "Merged.csv")



