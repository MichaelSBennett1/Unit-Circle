library(tidyverse)
library(ggforce)

# Unit Circle 1

ggplot() + 
  geom_circle(aes(x0 = 0, y0 = 0, r = 1), fill = "grey") +
  coord_fixed(xlim = c(-1, 1), ylim = c(-1, 1)) +  # Ensure aspect ratio is 1:1
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 0) +
  geom_segment(aes(x = 0, y = 0, xend = 0.6, yend = 0.8)) +
  geom_segment(aes(x = 0, y = 0.8, xend = 0.6, yend = 0.8)) +
  geom_segment(aes(x = 0.6, y = 0, xend = 0.6, yend = 0.8)) +
  annotate('text', x = -0.04, y = -0.04, label = '0', col = "black") +
  annotate('text', x = -0.04, y = 0.94, label = '1', col = "black") +
  annotate('text', x = 0.94, y = -0.04, label = '1', col = "black") +
  annotate('text', x = 0.55/2, y = 0.85, label = 'x', col = "black") +
  annotate('text', x = 0.65, y = 0.4, label = 'y', col = "black") +
  annotate('text', x = 0.25, y = 0.44, label = 'r', col = "black") +
  theme(panel.background = element_rect(fill = "black"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank())

# Unit Circle 2

ggplot(data.frame(r = c(-1, 1), theta = c(1, 1)),
       aes(x = r, y = theta)) +
  coord_polar(theta = 'y',
              direction = -1,
              start = -pi/2) +
  scale_y_continuous(limits = c(0, 2 * pi),
                     breaks = c(0, pi / 2, pi, 3 * pi/2),
                     labels = c('0', 'pi/2', 'pi', '3/2pi')) +
  scale_x_continuous(limits = c(0, NA))

# Unit Circle 3

theta <- seq(0, 2 * pi, length.out = 100)
circle <- data.frame(x = cos(theta), y = sin(theta))

ggplot() + 
  geom_path(data = circle, aes(x = x, y = y), color = "black") +
  coord_fixed(xlim = c(-1, 1), ylim = c(-1, 1)) +  # Maintain aspect ratio
  geom_hline(yintercept = 0, color = "black") +
  geom_vline(xintercept = 0, color = "black") +
  geom_segment(aes(x = 0, y = 0, xend = 0.6, yend = 0.8), color = "black") +
  geom_segment(aes(x = 0, y = 0.8, xend = 0.6, yend = 0.8), color = "black") +
  geom_segment(aes(x = 0.6, y = 0, xend = 0.6, yend = 0.8), color = "black") +
  annotate('text', x = -0.04, y = -0.04, label = '0', col = "black") +
  annotate('text', x = -0.04, y = 0.94, label = '1', col = "black") +
  annotate('text', x = 0.94, y = -0.04, label = '1', col = "black") +
  annotate('text', x = 0.55/2, y = 0.85, label = 'x', col = "black") +
  annotate('text', x = 0.65, y = 0.4, label = 'y', col = "black") +
  annotate('text', x = 0.25, y = 0.44, label = 'r', col = "black") +
  theme(panel.background = element_rect(fill = "white"),  
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank())

# Unit Circle 4

theta <- seq(0, 2 * pi, length.out = 100)
x <- cos(theta)
y <- sin(theta)

plot(x, y, type = 'l', col = 'black', xlab = '', ylab = '', asp = 1,
     xlim = c(-1.5, 1.5), ylim = c(-1.5, 1.5), bty = 'n')

abline(h = 0, v = 0, col = 'black')
segments(0, 0, 0.6, 0.8, col = 'black')
segments(0, 0.8, 0.6, 0.8, col = 'black')
segments(0.6, 0, 0.6, 0.8, col = 'black')

text(-0.1, -0.1, labels = '0', col = 'black')
text(-0.1, 1.1, labels = '1', col = 'black')
text(1.1, -0.1, labels = '1', col = 'black')
text(0.3, 0.85, labels = 'x', col = 'black')
text(0.65, 0.4, labels = 'y', col = 'black')
text(0.25, 0.4, labels = 'r', col = 'black')
title("Unit Circle")
