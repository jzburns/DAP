# load the athletes data
athletes <- read.table('../athletes.txt', header=T, sep=",")

# replace 0 and 1 with M and F
athletes$Sex <- factor(as.factor(athletes$Sex), label=c("M","F"))

# discover outliers in the data in the height column
# use the boxplot athletes height
# filter the data and look for outliers for F basketball players
# this means subset the data:
# boxplot(athletes$Ht)
# with(subset(athletes, Sport=="b_ball" & Sex=="F"), boxplot(Ht))
# x11()
# with(subset(athletes, Sport=="b_ball" & Sex=="M"), boxplot(Ht))
# equivalent:
# subdata <- subset(athletes, Sport=="b_ball" & Sex=="F")
# boxplot(subdata$Ht)
# next we display Ht boxplots for each sport and Sex combination

doboxplots <- function () {
  boxplot(athletes$Ht ~ athletes$Sex + athletes$Sport)
}

# pass in the M/F indicator and return the mean height
# for the Sex
calcmeanHt <- function (MorF) {
  # calc the mean height for the subset where
  # sex = MorF
  subsetHt <- subset(athletes, Sex==MorF)
  mean(subsetHt$Ht)
}

doboxplots()

# linear models

linmodWt <- with(athletes, lm(BMI~Wt))
linmodWtHt <- with(athletes, lm(BMI~Wt+Ht))


