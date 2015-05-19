## Data from disasters that occured in 2014:

setwd("/home/eleonore/Documents/PERSONAL_PROJECTS/coursera_ds/practice/")

csv_file <- "disaster_2014.csv"
f <- paste(getwd(), csv_file, sep="/")
disaster_data <- read.csv(f)


summary_disaster <- function(df){
  Total <- apply(df[, c("occurrence", "Total.deaths", "Injured", "Homeless", "Total.affected", "Total.damage")], 2, sum)
  Average <- apply(df[, c("occurrence", "Total.deaths", "Injured", "Homeless", "Total.affected", "Total.damage")], 2, mean)
  Max <- apply(df[, c("occurrence", "Total.deaths", "Injured", "Homeless", "Total.affected", "Total.damage")], 2, max)
  Min <- apply(df[, c("occurrence", "Total.deaths", "Injured", "Homeless", "Total.affected", "Total.damage")], 2, min)
  
  return(data.frame(Total, Average, Max, Min))
}

summary_disaster(disaster_data)

num_affected <- function(df, threshold){ 
  affec <- df$Total.affected > threshold
  return(df[affec, c("Country.name", "disaster.subtype")])
}

num_affected(disaster_data, 100000)