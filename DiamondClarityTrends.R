# to plot data, we need the library ggplot2
# install ggplot2 and import via library(...) method
install.packages("ggplot2")
library("ggplot2")

# Download P2-Mispriced-Diamonds.csv from
# https://sds-platform-private.s3-us-east-2.amazonaws.com/uploads/P2-Mispriced-Diamonds.csv
# read in the CSV (Comma Separated Values) file into the varaible myData
myData <- read.csv("~/data/P2-Mispriced-Diamonds.csv")


# Limit the diamond records to those transactions with <2.5 carat diamonds
smallerDiamonds = myData[myData$carat<2.5,]

# Using ggplot to graph trends of carat vs price
ggplot(data=smallerDiamonds, aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()

