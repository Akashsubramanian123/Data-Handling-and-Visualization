salary_long <- data.frame(
  Employee = paste0('E', rep(1:10, each=4)),
  Department = rep(c('HR', 'IT', 'Finance', 'Marketing'), 10),
  Salary = c(4.2,6.5,5.8,5.1, 4.5,7.0,6.2,5.3, 4.7,7.4,6.0,5.5,
             4.1,6.8,5.9,5.4, 4.6,8.2,6.7,5.8, 4.3,7.6,6.4,5.6, 4.8,8.5,6.9,5.9,
             4.4,7.1,6.1,5.2, 4.9,8.8,7.2,6.0, 4.5,7.3,6.3,5.4)
)
ggplot(salary_long, aes(x=Department, y=Salary, fill=Department)) +
  geom_violin(alpha=0.5)
salary_long <- data.frame(
  Employee = paste0('E', rep(1:10, each=4)),
  Department = rep(c('HR', 'IT', 'Finance', 'Marketing'), 10),
  Salary = c(4.2,6.5,5.8,5.1, 4.5,7.0,6.2,5.3, 4.7,7.4,6.0,5.5,
             4.1,6.8,5.9,5.4, 4.6,8.2,6.7,5.8, 4.3,7.6,6.4,5.6, 4.8,8.5,6.9,5.9,
             4.4,7.1,6.1,5.2, 4.9,8.8,7.2,6.0, 4.5,7.3,6.3,5.4)
)

ggplot(salary_long, aes(x=Department, y=Salary, fill=Department)) +
  geom_boxplot(width=0.2)
salary_long %>% group_by(Department) %>% summarize(Range = max(Salary) -
                                                     min(Salary)) %>% arrange(desc(Range))
salary_long %>% group_by(Department) %>% summarize(Median = median(Salary)) %>%
  arrange(desc(Median))