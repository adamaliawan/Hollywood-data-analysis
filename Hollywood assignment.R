#Load the data
df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
View(df)

#install packages 
install.packages('tidyverse')
library('tidyverse')

#Checking data types
str(df)

#Cleaning the data 
colSums(is.na(df))
df <- df%>% drop_na()
colSums(is.na(df))

#Exploratory data analysis 
summary(df)

#Scatter plot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90)) + labs(y="Rotten Tomato Score", x="Studio")
#Bar chart
ggplot(df, aes(x=Year)) + geom_bar() +labs(y="Number of films", x="Year")

#Exporting clean data
write.csv(df, "clean_hollywood_data.csv")

