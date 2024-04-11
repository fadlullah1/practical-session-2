managers <- read.csv("managers.csv")
str(managers)

#convert to date factor
managers_date <- as.Date(managers$Date, format = c("%Y-%d-%m","%m/%d/%Y","%Y-%d-%m"))
managers_date

managers$Date <- managers_date
managers

str(managers)

#select record 
startdate <- as.Date("2018-10-18")
enddate <- as.Date("2018-11-01")
startdate
enddate
class(startdate)
class(enddate)

new_data <- managers[managers$Date >= startdate & managers$Date <= enddate]
new_data

include_list1 <- managers[8:9]
include_list1

#drop columns for manager
managers1
managers1 <- subset(managers, select = -c(Q3,Q4)) 

attach(managers)
new_data1 <- subset(managers, Age >= 35 | Age <= 24, select = c(Q1,Q2,Q3,Q4,Q5))
new_data1
detach(managers)

# where gender = m and age > 25 only show records from gender q4 inclusive

new_data2 <- subset(managers,Gender == "M" & Age > 25, select = Gender:Q4)
new_data2

new_managers <- subset(managers,  Gender == "M" & Age > 25, select = 4:9)
new_managers

# selecting a random sample of 3 records from managers
my_sample <- managers[sample(1:nrow(managers),3,replace = FALSE),]
my_sample
# selecting a random sample of 10 records from managers
my_sample1 <- managers[sample(1:nrow(managers),10,replace = TRUE),]
my_sample1

#sorting data
attach(managers)
new_data3 <- managers[order(Age)]
new_data3
 new_data4 <- managers[order(Gender,Age)]
 new_data4

detach(managers)
 
