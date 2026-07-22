resp_df <- data.frame(Time = c(210, 225, 230, 240, 250, 260, 270, 280, 285,
                               290, 300, 305, 310, 315, 320, 330, 340, 350, 360, 380))
ggplot(resp_df, aes(x=Time)) + geom_histogram(bins=6, fill='skyblue',
                                              color='black')
resp_df <- data.frame(Time = c(210, 225, 230, 240, 250, 260, 270, 280, 285,
                               290, 300, 305, 310, 315, 320, 330, 340, 350, 360, 380))
ggplot(resp_df, aes(x=Time)) + geom_density(color='red', size=1)
mean(resp_df$Time); median(resp_df$Time)
quantile(resp_df$Time, probs=c(0.25, 0.75))