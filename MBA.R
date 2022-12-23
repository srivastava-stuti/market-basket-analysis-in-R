setwd("C:/Users/Hp/OneDrive/Desktop/my-r-projects/github/market-basket-analysis-in-R")
getwd()

## Let us import the data that we need to perform the Market Basket Analysis
RTxn <- read.table("MBA.csv", sep = ",", header = T)
nrow(RTxn)

## Let us view and eye-ball the data
View(RTxn)
str(RTxn)
RTxn$Invoice_No <- as.factor(RTxn$Invoice_No)

## From structure we can see that Txn_Date should be casted to Date Format
## Aggregating the Invoices at Transaction Level
## We want one row per transaction. 
## The one row should have details of all the products purchased in that transaction
?split
Agg.RTxn <- split(RTxn$Item_Desc,RTxn$Invoice_No)
class(Agg.RTxn)
Agg.RTxn
## To see specific row number transaction
Agg.RTxn [105]


##install.packages("arules")
library(arules)
## logic to remove duplicate items from the list
Agg.RTxn_DD <- list()
for (i in 1:length(Agg.RTxn)) {
  Agg.RTxn_DD[[i]] <- as.character(Agg.RTxn[[i]][!duplicated(Agg.RTxn[[i]])])
}
## converting transaction items from list format to transaction format
Txns <- as(Agg.RTxn_DD, "transactions")

summary(Txns)

inspect(Txns[10]) ## inspect specific transaction
## Let us see the support
freq <- itemFrequency(Txns)
freq <- freq[order(-freq)]
freq["Bread"]
barplot(freq[1:20])
?itemFrequencyPlot
itemFrequencyPlot(Txns, support = 0.10)
itemFrequencyPlot( Txns, topN = 10)


## install.packages("arulesViz")
library("arulesViz")
?apriori
arules1 <- apriori(data = Txns)
summary(arules1)

## See the Association Rules
library(RColorBrewer)
inspect(arules1)
inspect(sort(arules1, by = "lift"))
arules2 <- apriori(data = Txns, parameter = list(support = 0.05, confidence = 0.5, maxlen = 2))
plot ( arules2,control=list(col = brewer.pal(11,"Spectral")), main="Association Rules Plot")
#Rules with high lift typically have low support
rules_df <- as(arules2,"data.frame")

rules_df$lhs_suuport <- rules_df$support/ rules_df$confidence;
rules_df$rhs_support <- rules_df$confidence / rules_df$lift;
View(rules_df)
write.table(rules_df, file = "mbaoutput.csv", sep = "," , append = F, row.names = F)
# unlink("mba_output.csv") # deletes the file

# Plot Interactivee Graphs
subrules2 <- head(sort(arules2, by="support"), 20)
plot(subrules2, method="grouped" , engine="interactive")







