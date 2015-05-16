## Data from disasters in 2014:

d <- read.csv("disaster_2014.csv")

head(d)

## Countries for disasters with > 100,000 people affected:
a <- d$Total.affected > 100000
d[a, "Country.name"]

## Average and max of people affected:
aff <- d$Total.affected
mean(aff)
max(aff)

d[d$Total.affected == max(aff), "Country.name"]