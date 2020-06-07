library(tidyverse)


load("rda/murders.rda")
murders <- murders %>% mutate(abb = reorder(abb, rate)) %>% ggplot(aes(abb, rate)) + geom_bar(width = 0.5, stat = "identity", color = "black") + coord_flip()
murders
ggsave("/projects/murders/barplot.png")


