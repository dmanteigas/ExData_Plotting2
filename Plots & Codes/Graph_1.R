library(data.table)
Data1 <- readRDS("summarySCC_PM25.rds")
data <- data.table(Data1)
emission_by_year <- data[,data.frame(Total_Emissions=sum(Emissions)),by=year]
options("scipen" = 20)
with(emission_by_year,{
        barplot(Total_Emissions,col="blue",ylab="Total number of pm25 Emissions",xlab="Year",names.arg=c("1999", "2002", "2005", "2008"), cex.names=0.8)
}
)