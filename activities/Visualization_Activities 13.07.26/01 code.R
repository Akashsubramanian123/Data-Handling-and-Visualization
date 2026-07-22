library(ggplot2)
library(dplyr)
library(tidyr)
student_long <- data.frame(
  Student = paste0('S', rep(1:10, each=5)),
  Subject = rep(c('Mathematics', 'Physics', 'Chemistry', 'Programming',
                  'English'), 10),
  Score = c(92,88,84,95,81, 76,72,69,80,74, 81,78,83,85,79, 65,70,68,72,75,
            90,94,91,96,89, 58,62,60,65,70, 84,86,82,88,80, 71,75,73,77,72, 95,91,93,98,94,
            79,81,77,83,78)
)
ggplot(student_long, aes(x=Subject, y=Student, fill=Score)) +
  geom_tile(color='white') + scale_fill_gradient(low='#e6f2ff', high='#003366') +
  geom_text(aes(label=Score))
student_long %>% group_by(Student) %>% summarize(Total = sum(Score)) %>%
  arrange(desc(Total)) %>% slice(1)
student_long %>% group_by(Subject) %>% summarize(Avg = mean(Score)) %>%
  arrange(desc(Avg)) %>% slice(1)
student_long %>% group_by(Student) %>% summarize(Avg = mean(Score)) %>%
  filter(Avg < 75)