# ASSIGNMENT 1
# DATASET: GLOBAL LIFESTYLE AND WELLNESS DATASET

# 1.) SETTING UP THE ENVIRONMENT
# ===================================================
setwd("C:/Users/hp/OneDrive/Documents/R-STEM For Developement/Assigment_Files")
getwd()

# Importing the dataset:
Global_lifestyle <- read.csv("Global_Lifestyle_and_Wellness_Dataset.csv", header = TRUE)

# 2.) OVERVIEW OF DATASET:
head(Global_lifestyle) # Gives first 5 rows of data

str(Global_lifestyle) # Gives description of each feature variable and available data

summary(Global_lifestyle) # Summarize the entire dataset

# 3.) DESCRIPTIVE STATISTICS
# ===================================================
# a.) Age
Age_mean <- mean(Global_lifestyle$Age)
Age_mean # Average age: 42.25079

Age_med <- median(Global_lifestyle$Age)
Age_med  # Median age: 43

Age_sd <- sd(Global_lifestyle$Age)
Age_sd #  Age std: 13.1002

summary(c(Age_mean,Age_med,Age_sd))

# b.) BMI

BMI_mean <- mean(Global_lifestyle$BMI)
BMI_mean  # BMI mean: 26.584

BMI_med <- median(Global_lifestyle$BMI)
BMI_med  # BMI median: 26.3

BMI_sd <- sd(Global_lifestyle$BMI)
BMI_sd  # BMI std: 5.003

summary(c(BMI_mean,BMI_med,BMI_sd))

# c.) Health_Score
Health_Score_mean <- mean(Global_lifestyle$Health_Score)
Health_Score_mean  # Health_Score mean: 80.786

Health_Score_med <- median(Global_lifestyle$Health_Score)
Health_Score_med   # Health_Score median: 81.3

Health_Score_sd <- sd(Global_lifestyle$Health_Score)
Health_Score_sd   # Health_Score std: 9.027188
summary(c(Health_Score_mean,Health_Score_med,Health_Score_sd))

# 4.) FILTERING AND SUBSETTING
#======================================================
# a.) Find all participants with Health_score > 85

Global_lifestyle[Global_lifestyle$Health_Score > 80.786,]$Region

# Health outcomes of participants greater than the mean
table(Global_lifestyle[Global_lifestyle$Health_Score > 80.786, ]$Region)

# Highest Health outcome - Europe with counts of 30

Participants <- subset(Global_lifestyle, Health_Score > 85)
Participants

length(Global_lifestyle$Region)

# b.) How are from Asia
table(Global_lifestyle$Region)

# We observe that 60 participants are from Asia

# 5.) CREATING A SIMPLE VISUALIZATION
# =============================================
hist(Global_lifestyle$Health_Score, main = "Distribution on the Health_scores of Participants",
     xlab = "Health_score", col = "green", border = "white")

# 6.) INTERPRETATION
# ===========================================
# i. The variable with the highest variability is Age with std of 13.1002

# ii. Average of Health Score is 80.786

# iii. The region which appear with higher health outcomes is Europe with counts of 30
  