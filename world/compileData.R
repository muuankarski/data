# Raw data is from
## http://en.wikipedia.org/wiki/List_of_sovereign_states_and_dependent_territories_by_continent_%28data_file%29

# Operations

## Add continent names
dat <- read.csv("world/countriesContinents.csv")
names(dat)[1] <- "contCode"

# North America is coded NA which R sees as a missing data. HAve to fix that
dat$contCode <- as.character(dat$contCode)
dat$contCode[dat$contCode == NA] <- "NA"

# Create a new var contName
dat$contName[dat$contCode == "AF"] <- "Africa"
dat$contName[dat$contCode == "AN"] <- "Antarctica"
dat$contName[dat$contCode == "AS"] <- "Asia"
dat$contName[dat$contCode == "EU"] <- "Europe"
dat$contName[dat$contCode == "OC"] <- "Oceania"
dat$contName[dat$contCode == "OC"] <- "South America"
dat$contName[dat$contCode == "NA"] <- "North America"

write.csv(dat, file="world/countriesContinents.csv")