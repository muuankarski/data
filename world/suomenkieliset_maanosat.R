dat <- read.csv("~/data/mydata/world/countries_continents.csv")

dat$mannerNimi[dat$contName == "Africa"] <- "Afrikka"
dat$mannerNimi[dat$contName == "Antarctica"] <- "Etelämanner"
dat$mannerNimi[dat$contName == "Asia"] <- "Aasia"
dat$mannerNimi[dat$contName == "Europe"] <- "Eurooppa"
dat$mannerNimi[dat$contName == "North America"] <- "Pohjois-Amerikka"
dat$mannerNimi[dat$contName == "Oceania"] <- "Oseania"
dat$mannerNimi[dat$contName == "South America"] <- "Etelä-Amerikka"

write.csv(dat, "~/data/mydata/world/countries_continents.csv")