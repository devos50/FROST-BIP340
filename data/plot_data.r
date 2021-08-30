library(ggplot2)

dat <- read.csv("data.csv")

p <- ggplot(data=dat, aes(x=n, y=time, group=threshold, colour=threshold)) + geom_line() + geom_point() + theme_bw() + xlab("Participants") + ylab("Total time") + theme(legend.position = c(0.2, 0.8))

ggsave(filename="time.pdf", plot=p, height=4, width=6)
