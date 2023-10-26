# 1. Create a vector using : operator
# a. Sequence from -5 to 5. Write the R code and its output.
# Describe its output.
num1<-seq(-5,5,by=1)
num1
#  [1] -5 -4 -3 -2 -1  0  1  2  3  4  5

# the output sequence of is simply moving by 1 from -5 to the positive 5

# b. x <- 1:7. What will be the value of x?
x<-1:7
x
# [1] 1 2 3 4 5 6 7

# 2. Create a vector using seq() function
# a. seq(1, 3, by=0.2) # specify step size
# Write the R script and its output. Describe the output.
num2<-seq(1, 3, by=0.2)
num2
#  [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
# the output sequence is simply moving by 0.2 from 1 to 3

# 3. A factory has a census of its workers. There are 50 workers in total. The following
# list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18.
workers_age<-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
workers_age
# [1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41
# [35] 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18
length(workers_age)
# [1] 50

# a. Access 3rd element, what is the value?
workers_age[3]
# [1] 22

# b. Access 2nd and 4th element, what are the values?
workers_age[c(2,4)]
# [1] 28 36

# c. Access all but the 4th and 12th element is not included. 
# Write the R script and its output.
workers_age[c(-4,-12)]
# [1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18
# [36] 44 38 41 48 27 39 19 30 61 54 58 26 18

# 4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
x <- c("first"=3, "second"=0, "third"=9)
# a. Print the results. Then access x[c("first", "third")].
x[c("first", "third")]
# first third 
# 3     9
# Describe the output.
# The output only call the first and third and print its output

# 5. Create a sequence x from -3:2.
x<- -3:2
x
# [1] -3 -2 -1  0  1  2

# a. Modify 2nd element and change it to 0;
x[2] <- 0
x
# Describe the output.
# The output sequence x created have been changed the 2nd element to 0

# 6. *The following data shows the diesel fuel purchased by Mr. Cruz.
# a. Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.
num6<-data.frame(
Month=c("Jan", "Feb", "March","April","May","June"),
Liter<-c(52.50,57.25,60.00,65.00,74.25,54.00),
Purchase <-c(25,30,40,50,10,45)
)
colnames(num6) <- c("Month", "Price Per Liter(Php)", "Purchase-quantity(Liters)")
t(num6)
# [,1]    [,2]    [,3]    [,4]    [,5]    [,6]   
# Month                     "Jan"   "Feb"   "March" "April" "May"   "June" 
# Price Per Liter(Php)      "52.50" "57.25" "60.00" "65.00" "74.25" "54.00"
# Purchase-quantity(Liters) "25"    "30"    "40"    "50"    "10"    "45"   

# b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘. Write the R scripts and its output
weighted.mean(Liter,Purchase)
# [1] 59.2625

# 7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths
# (in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.
# a. Type “rivers” in your R console.
# Create a vector data with 7
# elements, containing the number of elements (length)
# in rivers, their sum (sum), mean (mean),
# median(median), variance(var), standard deviation(sd),
# minimum (min) and maximum (max).
# data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),sd(rivers), min(rivers), max(rivers))

# b. What are the results?
# [1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

# 8. The table below gives the 25 most powerful celebrities and their annual pay as ranked
# by the editions of Forbes magazine and as listed on the Forbes.com website.

# a. Create vectors according to the above table.
# Write the R scripts and its output.
num8 <- data.frame(
  Power<-c(1:25),
  Celebrity<-c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K. Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGrew","Jay Lenon","Celine Dion","Kobe Bryant"),
  Pay<- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
)
colnames(num8) <- c("Power Ranking", "Celebrity Name", "Pay")
num8
# Power Ranking       Celebrity Name Pay
# 1              1           Tom Cruise  67
# 2              2       Rolling Stones  90
# 3              3        Oprah Winfrey 225
# 4              4                   U2 110
# 5              5          Tiger Woods  90
# 6              6     Steven Spielberg 332
# 7              7         Howard Stern 302
# 8              8              50 Cent  41
# 9              9 Cast of the Sopranos  52
# 10            10            Dan Brown  88
# 11            11     Bruce Springteen  55
# 12            12         Donald Trump  44
# 13            13         Muhammad Ali  55
# 14            14       Paul McCartney  40
# 15            15         George Lucas 233
# 16            16           Elton John  34
# 17            17      David Letterman  40
# 18            18       Phil Mickelson  47
# 19            19          J.K. Rowling  75
# 20            20           Bradd Pitt  25
# 21            21        Peter Jackson  39
# 22            22      Dr. Phil McGrew  45
# 23            23            Jay Lenon  32
# 24            24          Celine Dion  40
# 25            25          Kobe Bryant  31


# b. Modify the power ranking and pay of J.K. Rowling.
# Change power ranking to 15 and pay to 90. Write the
# R scripts and its output.
num8 <- num8[c(1:14, 19, 15, 16:18, 20:25),]
num8$Pay[15]<-90
num8$`Power Ranking`<-c(1:25)
num8
# Power Ranking       Celebrity Name Pay
# 1              1           Tom Cruise  67
# 2              2       Rolling Stones  90
# 3              3        Oprah Winfrey 225
# 4              4                   U2 110
# 5              5          Tiger Woods  90
# 6              6     Steven Spielberg 332
# 7              7         Howard Stern 302
# 8              8              50 Cent  41
# 9              9 Cast of the Sopranos  52
# 10            10            Dan Brown  88
# 11            11     Bruce Springteen  55
# 12            12         Donald Trump  44
# 13            13         Muhammad Ali  55
# 14            14       Paul McCartney  40
# 19            15         J.K. Rowling  90
# 15            16         George Lucas 233
# 16            17           Elton John  34
# 17            18      David Letterman  40
# 18            19       Phil Mickelson  47
# 20            20           Bradd Pitt  25
# 21            21        Peter Jackson  39
# 22            22      Dr. Phil McGrew  45
# 23            23            Jay Lenon  32
# 24            24          Celine Dion  40
# 25            25          Kobe Bryant  31

# c. Create an excel file from the table above and save it
# as csv file(PowerRanking). Import the csv file into
# the RStudio. What is the R script?
library(readr)
PowerRanking <- read_csv("PowerRanking.csv")
View(PowerRanking)

# d. Access the rows 10 to 20 and save it as Ranks.RData.
# Write the R script and its output.
PowerRanking[10:20,]
# e.  Describe its output. The output is using a `[]` in the obect in order to specify the number of arrays
# you want to get like my answer 'PowerRanking[10:20,]' in order to get the 10 to 20 solution and the comma 
# is simply seperating the rows and columns.
# `Power Ranking` `Celebrity Name`   Pay
#              <dbl> <chr>            <dbl>
#  1              10 Dan Brown           88
#  2              11 Bruce Springteen    55
#  3              12 Donald Trump        44
#  4              13 Muhammad Ali        55
#  5              14 Paul McCartney      40
#  6              15 George Lucas        90
#  7              16 Elton John          34
#  8              17 David Letterman     40
#  9              18 Phil Mickelson      47
# 10              19 J.K Rowling         75
# 11              20 Bradd Pitt          25
# > 

# 9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
# a. Import the excel file into your RStudio.
# What is the R script?
library(readr)
hotels_vienna_xlsx_hotels_vienna <- read_csv("hotels-vienna.xlsx - hotels-vienna.csv")
View(hotels_vienna_xlsx_hotels_vienna)


# b. How many dimensions does the dataset have?
dim(hotels_vienna_xlsx_hotels_vienna)
# 1] 428  24

# c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings.
# Write the R script.
View(hotels_vienna_xlsx_hotels_vienna[c(1,6,7,9,22,24)])
num9c<-print.data.frame(hotels_vienna_xlsx_hotels_vienna[c(1,6,7,9,22,24)])
num9c

# d. Save the data as **new.RData to your RStudio.
# Write the R script.
write.csv(num9c, file = "new.RData")

# e. Display the first six rows and last six rows of the new.RData. What is the R script?
library(readr)
new_RData <- read_csv("new.RData.csv")
View(new_RData)
new_RData[1:6,]


#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.
# a. Write the R scripts and its output.
vegetable<-list("cabbage","tomato","eggplant","onions","potato","carrot","cucumber","radish","broccoli","garlic")
vegetable

# b. Add 2 additional vegetables after the last vegetables in the list. 
# What is the R script and its output?
vegetable_new1<-append(vegetable,c("spinach","olive"), after = 10)
vegetable_new1

# c. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have? 
# What is the R script and its output?
vegetable_new2<-append(vegetable_new1,c("pea","cauliflower","beans","mushroom"), after = 5)
vegetable_new2

# d. Remove the vegetables in index 5, 10, and 15. How many vegetables were left? 
# Write the codes and its output.
vegetable_new2[c(-5,-10,-15)]
