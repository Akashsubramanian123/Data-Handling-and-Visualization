steps_long <- data.frame(
  Age_Group = rep(c('Age_20_30', 'Age_31_45', 'Age_46_60'), each=10),
  Steps = c(9500,10200,9800,11000,10500,9700,10100,10800,11200,9900,
            8200,8600,8400,9000,8900,8500,8700,9100,9200,8600,
            6500,6700,6900,7200,7000,6800,7100,7300,7400,6950)
)
ggplot(steps_long, aes(x=Steps)) + geom_histogram(bins=5) +
  facet_wrap(~Age_Group)
steps_long <- data.frame(
  Age_Group = rep(c('Age_20_30', 'Age_31_45', 'Age_46_60'), each=10),
  Steps = c(9500,10200,9800,11000,10500,9700,10100,10800,11200,9900,
            8200,8600,8400,9000,8900,8500,8700,9100,9200,8600,
            6500,6700,6900,7200,7000,6800,7100,7300,7400,6950)
)
ggplot(steps_long, aes(x=Steps)) + geom_density() + facet_wrap(~Age_Group)
steps_long <- data.frame(
  Age_Group = rep(c('Age_20_30', 'Age_31_45', 'Age_46_60'), each=10),
  Steps = c(9500,10200,9800,11000,10500,9700,10100,10800,11200,9900,
            8200,8600,8400,9000,8900,8500,8700,9100,9200,8600,
            6500,6700,6900,7200,7000,6800,7100,7300,7400,6950)
)
ggplot(steps_long, aes(x=Age_Group, y=Steps)) + geom_boxplot()
steps_long %>% group_by(Age_Group) %>% summarize(Med = median(Steps)) %>%
  arrange(desc(Med))