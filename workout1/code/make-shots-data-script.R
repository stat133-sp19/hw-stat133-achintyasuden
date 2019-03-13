# Data Preparation of Shots Data
# This script will contain the required variables to be used in the visualization phase
# The inputs will be the separate .csv files of each player
# The output will be the shots-data.csv file containing all the data 

curry <- read.csv("data/stephen-curry.csv", stringsAsFactors = F)
durant <- read.csv("data/kevin-durant.csv", stringsAsFactors = F, sep = ",")
thompson <- read.csv("data/klay-thompson.csv", stringsAsFactors = F)
iguodala <- read.csv("data/andre-iguodala.csv", stringsAsFactors = F)
green <- read.csv("data/draymond-green.csv", stringsAsFactors = F)

curry$Name <- "Stephen Curry"
durant$Name <- "Kevin Durant"
green$Name <- "Draymond Green"
iguodala$Name <- "Andre Iguodala"
thompson$Name <- "Klay Thompson"

curry$shot_made_flag[curry$shot_made_flag == "y"] <- "shot_yes"
curry$shot_made_flag[curry$shot_made_flag == "n"] <- "shot_no"

durant$shot_made_flag[durant$shot_made_flag == "y"] <- "shot_yes"
durant$shot_made_flag[durant$shot_made_flag == "n"] <- "shot_no"

thompson$shot_made_flag[thompson$shot_made_flag == "y"] <- "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] <- "shot_no"

green$shot_made_flag[green$shot_made_flag == "y"] <- "shot_yes"
green$shot_made_flag[green$shot_made_flag == "n"] <- "shot_no"

iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] <- "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] <- "shot_no"

curry$Minute <- (12*curry$period - curry$minutes_remaining)
durant$Minute <- (12*durant$period - durant$minutes_remaining)
green$Minute <- (12*green$period - green$minutes_remaining)
iguodala$Minute <- (12*iguodala$period - iguodala$minutes_remaining)
thompson$Minute <- (12*thompson$period - thompson$minutes_remaining)

sink(file = "../workout1/output/stephen-curry-summary.txt")
summary(curry)
sink()

sink(file = "../workout1/output/kevin-durant-summary.txt")
summary(durant)
sink()

sink(file = "../workout1/output/draymond-green-summary.txt")
summary(green)
sink()

sink(file = "../workout1/output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink(file = "../workout1/output/klay-thompson-summary.txt")
summary(thompson)
sink()

shots_data <- rbind(curry, durant, green, thompson, iguodala)


write.csv(shots_data, file = "../workout1/data/shots-data.csv")
sink(file = "../workout1/output/shots-data-summary.txt")
summary(shots_data)
sink()



