main <- function(){
library(zoo)
library(ggplot2)
x  <- get(load("kawase.RData"))
gp = ggplot(x, aes(x=年月, y=終値))
gp + geom_line()+facet_wrap(~通貨区分)
ggsave(gp, file="為替レート推移.png")
}