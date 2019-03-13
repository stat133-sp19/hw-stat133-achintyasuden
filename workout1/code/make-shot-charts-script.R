#Shot Charts
#This file contains data about the distribution of shots of players on a basketball court
#Input:
#Output:

court_file <- "images/nba-court.jpg"

court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))


klay_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

pdf(file = 'images/klay-thompson-shot-chart.pdf', width = 6.5, height = 5)
klay_shot_chart
dev.off()

curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()

pdf(file = 'images/stephen-curry-shot-chart.pdf', width = 6.5, height = 5)
curry_shot_chart
dev.off()


green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

pdf(file = 'images/draymond-green-shot-chart.pdf', width = 6.5, height = 5)
green_shot_chart
dev.off()

durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()

pdf(file = 'images/kevin-durant-shot-chart.pdf', width = 6.5, height = 5)
durant_shot_chart
dev.off()

iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()

pdf(file = 'images/andre-iguodala-shot-chart.pdf', width = 6.5, height = 5)
iguodala_shot_chart
dev.off()


gsw_shot_chart <- ggplot(data = shots_data)+
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 season)') +
  theme_minimal() + facet_wrap('Name', nrow = 2, ncol = 3)

pdf(file = 'images/gsw-shot-chart.pdf', width = 8, height = 7)
gsw_shot_chart
dev.off()

png(filename = 'images/gsw-shot-chart.png')
gsw_shot_chart
dev.off()



