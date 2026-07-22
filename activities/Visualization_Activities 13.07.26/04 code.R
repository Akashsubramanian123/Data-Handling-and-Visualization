library(ggplot2)
library(ggridges)
library(dplyr)
energy_long <- data.frame(
  Month = factor(rep(c('Jan','Feb','Mar','Apr','May'), each=10),
                 levels=c('Jan','Feb','Mar','Apr','May')),
  Consumption = c(220,240,230,215,225,245,235,228,238,232,
                  235,245,238,228,240,250,242,236,246,239,
                  250,260,255,248,258,265,259,252,262,256,
                  275,285,280,270,282,290,284,278,287,281,
                  295,305,300,292,298,310,302,297,307,301)
)
ggplot(energy_long, aes(x = Consumption, y = Month, fill = Month)) +
  geom_density_ridges()
energy_long %>% group_by(Month) %>% summarize(Avg = mean(Consumption)) %>%
  arrange(desc(Avg))
energy_long %>% group_by(Month) %>% summarize(Spread = max(Consumption)-
                                                min(Consumption)) %>% arrange(desc(Spread))