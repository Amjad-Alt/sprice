## code to prepare `DATASET` dataset goes here

#libraries
library(tidyverse)
library(readxl)
library(tidyr)
library(purrr)#to join all files


#bind all the files in this path together
file.list <- list.files(pattern='*.xlsx')

# need an id-column with the file-names
file.list <- setNames(file.list, file.list)

#want only sheet 4, skip 1 row and name id column month
sprice <-map_df(file.list, function(x) read_excel(x,sheet = 4, skip = 1), .id = "month")

#add column year; if you see 2020 in month column then add 2020 to year
sprice$year <- ifelse(grepl("2020", sprice$month), 2020)

#change value of month column into the month's name
#it worked but using only one command ..!
sprice$month <- gsub(".*feb.*", "february", sprice$month, perl=TRUE)
sprice$month <- gsub(".*march.*", "march", sprice$month, perl=TRUE)
sprice$month <- gsub(".*april.*", "april", sprice$month, perl=TRUE)
sprice$month <- gsub(".*may.*", "may", sprice$month, perl=TRUE)
sprice$month <- gsub(".*june.*", "june", sprice$month, perl=TRUE)
sprice$month <- gsub(".*july.*", "july", sprice$month, perl=TRUE)
sprice$month <- gsub(".*August.*", "August", sprice$month, perl=TRUE)
sprice$month <- gsub(".*September.*", "september", sprice$month, perl=TRUE)
sprice$month <- gsub(".*October.*", "october", sprice$month, perl=TRUE)

#Delete second column not informative
sprice$...1 = NULL

#Delete uninformative rows by function deletes if 15+ NA
delete.na <- function(DF, n=15) {
  DF[rowSums(is.na(DF)) <= n,]
}
sprice<-delete.na(sprice)

#I am thinking to make second column in small letters
sprice[[2]] <- tolower(sprice[[2]])


#tidy
sprice<- sprice %>%
  pivot_longer(c(`Riyadh`, `Makkah`,`Jeddah`,`Dammam`,
                 `Medina`,`Taif`,`Alhofof`,`Abha`,`Buraydah`,
                 `Tabuk`,`Hail`,`Jazzan`,`Njran`,`Baha`,`Skaka`,`Arar`),
               names_to = "city", values_to = "price")

usethis::use_data(sprice, overwrite = TRUE)
