# Load the data
data <- read.csv("flavors_of_cacao.csv")

# change to custom column names
colnames(data) <- c("Company", "BeanOrigin", "REF", "Date", "CocoPercent", "CompanyLocation", "Rating", "BeanType", "BeanOrigin")

# Filter data set by year to 2012
# data <- subset(data, data$Date == "2012")

# Get the max Rating for each Company
# maxRatings <- aggregate(data$Rating, by=list(data$Company), max)
# par(mar=c(12,5,5,1))
# barplot(
#     maxRatings$x, 
#     col=rainbow(20),
#     main="Ratings for 2012",
#     ylab="Rating",
#     names.arg=maxRatings$Group.1,
#     las=2,
#     cex.names=0.8
# )

# Create a factor
types <- factor(data$Company)
limitedCompanies <- levels(types)[c(1, 3, 5, 7, 15, 21, 27, 37, 41)]

# Loop through each unique Company
# par(mfrow=c(3,3), mar=c(5,5,5,1), las=1, cex.axis=1.5)
# for (cname in as.character(limitedCompanies)) {
#     # get the subset containing just a single company
#     companyData <- subset(data, data$Company == cname)
#     boxplot(
#         companyData$Rating ~ companyData$Date, 
#         main=cname, 
#         xlab="Date",
#         ylab="Rating",
#         col=(c("gold", "darkgreen"))
#         )
#     if(length(unique(companyData$Date)) == 1) {
#         text(c(1:length(companyData$Date)), mean(companyData$Rating) - 0.1, companyData$Date)
#     }
# }