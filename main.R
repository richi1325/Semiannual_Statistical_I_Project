library(readr)
bestsellers <- read_csv("bestsellers.csv")
z<-!is.na(bestsellers$Reviews)&!is.na(bestsellers$`Price(USD)`)&!is.na(bestsellers$Type)
x<-lapply(bestsellers, function(x) x[z])
df <- data.frame(Reviews = x$Reviews,
                 `Price(USD)` = x$`Price(USD)`,
                 Type = x$Type)
write.csv(df,'bestsellers_without_naValues.csv')