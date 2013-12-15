# Readme


This repository has several small pieces of data that I'm regularly using in my work for combining different datasets

## World

Data `countriesContinents.csv` has all the World countries with continents

**Read data in R**

```
library(RCurl)
GHurl <- getURL("https://raw.github.com/muuankarski/data/master/world/countriesContinents.csv")
dat <- read.csv(text = GHurl)
```

## Europe

Data `eu_cntry.csv` has all the European countries listed with names in native language, English and Finnish, some regime classification, too.

**Read data in R**

```
library(RCurl)
GHurl <- getURL("https://raw.github.com/muuankarski/data/master/europe/eu_cntry.csv")
dat <- read.csv(text = GHurl)
```


## Russia

Several regional coding to match cyrillic region names with shapefiles from [gadm.org](http://www.gadm.org/)

### Karelia region key

```
library(RCurl)
GHurl <- getURL("https://raw.github.com/muuankarski/data/master/russia/karelia_key_rayon.csv")
dat <- read.csv(text = GHurl)
```

### Nizhni region key

```
library(RCurl)
GHurl <- getURL("https://raw.github.com/muuankarski/data/master/russia/nizhni_key_rayon.csv")
dat <- read.csv(text = GHurl)
```