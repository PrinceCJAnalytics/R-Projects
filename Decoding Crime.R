
# ************** CIS4514 Coursework 1 Task 2 **************

# *********************** Question 1 **********************

print("<-------------- Question 1 -------------->")
#Loading the USArrests Dataset into my R environment 
data(USArrests)

# cat means concatenation. It takes multiple arguments and shows as single output line.
# To use next line cat() is used here as print() will not format effectively.
print("<---------------------------------------->")
cat("\n")

# *********************************************************

# *********************** Question 2 **********************

print("<-------------- Question 2 -------------->")
#Printing the first 4 rows of the USArrests Dataset by using the head() function and giving
#the argument of "4" indicating that only the first 4 rows are needing, otherwise the first 5 rows will be given as the output
print(head(USArrests, 4))
print("-----------------------")
cat("\n")

# *********************************************************

# *********************** Question 3 **********************

print("<-------------- Question 3 -------------->")
#Printing the last 3 rows of the USArrests Dataset by using the tail() function and giving
#the argument of "3" indicating that only the last 3 rows are needing, otherwise the last 5 rows will be given as the output
print(tail(USArrests, 3))
print("-----------------------")
cat("\n")

# *********************************************************

# *********************** Question 4 **********************

print("<-------------- Question 4 -------------->")
#Checking the USArrests Dataset structure using the the str() function
str(USArrests)
#'data.frame':	50 obs. of  4 variables
print("-----------------------")
cat("\n")

# *********************************************************

# *********************** Question 5 **********************

print("<-------------- Question 5 -------------->")
#Getting some statistical insights on the USArrests Dataset using the function summary()
summary(USArrests)
#A quick statistical summary is given for all 4 variables respectively. (i.e The Minimum, 1st Quantile, Median(2nd Quantile), The Mean, 3rd Quantile, The Maximum)
print("-----------------------")
cat("\n")

# *********************************************************

# *********************** Question 6 **********************

print("<-------------- Question 6 -------------->")
#To check for missing values in the USArrests Dataset, the anyNA() function is used.
anyNA(USArrests)
#Returning a 'FALSE' indicating there is no missing values in the USArrests Dataset.
print("-----------------------")
cat("\n")

# *********************************************************

# *********************** Question 7 **********************

print("<-------------- Question 7 -------------->")
#Finding out which US state has the highest and lowest arrest rates based on each crime category.
#from the USArrests Dataset.

#-----Murder Arrest-----#
USArrests[USArrests$Murder == max(USArrests$Murder), ]
print("The Higest Murder Case recorded in US was in Georgia State with a total of 17.4 cases (per 100,000)")
USArrests[USArrests$Murder == min(USArrests$Murder), ]
print("The lowest Murder Case recorded in US was in North Dakota State with a total of 0.8 cases (per 100,000)")

#-----Assault Arrest-----#
USArrests[USArrests$Assault == max(USArrests$Assault), ]
print("The Higest Assault Case recorded in US was in North Carolina State with a total of 337 cases (per 100,000)")
USArrests[USArrests$Assault == min(USArrests$Assault), ]
print("The lowest Assault Case recorded in US was in North Dakota State with a total of 45 cases (per 100,000)")

#-----Rape Arrest-----#
USArrests[USArrests$Rape == max(USArrests$Rape), ]
print("The Higest Rape Case recorded in US was in Nevada State with a total of 46 cases (per 100,000)")
USArrests[USArrests$Rape == min(USArrests$Rape), ]
print("The lowest Rape Case recorded in US was in North Dakota State with a total of 7.3 cases (per 100,000)")
print("-----------------------")
cat("\n")

# *********************************************************

# *********************** Question 8 **********************

print("<-------------- Question 8 -------------->")
#Subseting the USArrests Dataset, considerating only states with Murder arrests (per 100,000) less than 5.
str(USArrests[USArrests$Murder<5, ])
#ONly 16 states are less than 5 Murder arrest (per 100,000)
print("-----------------------")
cat("\n")
# *********************************************************

# *********************** Question 9 **********************

print("<-------------- Question 9 -------------->")
#Creating a boxplot and  of each variable in the USArrests Dataset

#------------------BOXPLOT-----------------#

#-----Boxplot for the Murder Arrest Variable-----#
boxplot(USArrests$Murder, main = "Boxplot of US Murder Arrest (Per 100,000)", 
        ylab = "Murder Arrest (Per 100,000)")
print("-----------------------")

#-----Boxplot for the Assault Arrest Variable-----#
boxplot(USArrests$Assault, main = "Boxplot of US Assault Arrest (Per 100,000)", 
        ylab = "Assault Arrest (Per 100,000)")
print("-----------------------")

#-----Boxplot for the Percent urban population Variable-----#
boxplot(USArrests$UrbanPop, main = "Boxplot of US Percent urban population", 
        ylab = "UrbanPop")
print("-----------------------")

#-----Boxplot for the Rape Arrest Variable-----#
boxplot(USArrests$Rape, main = "Boxplot of US Rape Arrest (Per 100,000)", 
        ylab = "Rape Arrest (Per 100,000)")
print("-----------------------")

#------------------Histogram-----------------#

#-----Histogram for the Murder Arrest Variable-----#
hist(USArrests$Murder, main = "Histogram of US Murder Arrest (Per 100,000)", 
        xlab = "Murder Arrest (Per 100,000)")
print("-----------------------")

#-----Histogram for the Assault Arrest Variable-----#
hist(USArrests$Assault, main = "Histogram of US Assault Arrest (Per 100,000)", 
        xlab = "Assault Arrest (Per 100,000)")
print("-----------------------")

#-----Histogram for the Percent urban population Variable-----#
hist(USArrests$UrbanPop, main = "Histogram of US Percent urban population", 
        xlab = "UrbanPop")
print("-----------------------")

#-----Histogram for the Rape Arrest Variable-----#
hist(USArrests$Rape, main = "Histogram of US Rape Arrest (Per 100,000)", 
        xlab = "Rape Arrest (Per 100,000)")
print("-----------------------")
cat("\n")
# *********************************************************

# *********************** Question 10 **********************

print("<-------------- Question 10 -------------->")
print("Yes,  there are outliers in the USArrests dataset but can only be found in the Rape Arrest Variable")
print("-----------------------")
cat("\n")
# *********************************************************

# *********************** Question 11 **********************

print("<-------------- Question 11 -------------->")
# Installing and loading the "corrplot" package
#install.packages("corrplot")
library(corrplot)
corr_matrix = cor(USArrests)
print(corr_matrix)
corrplot(corr_matrix)
print("-----------------------")
cat("\n")
# *********************************************************

# *********************** Question 12 **********************

print("<-------------- Question 12 -------------->")
# Installing and loading the "colorspace" to enable the "GGally" package function well
#install.packages("colorspace")
#install.packages("GGally")
library(GGally)
ggcorr(USArrests)
print("-----------------------")
cat("\n")
