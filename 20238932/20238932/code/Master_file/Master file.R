#Devtools
install.packages("devtools")
library(devtools)
find_rtools()

#Tidyverse
install.packages("tidyverse")
library(tidyverse)

library()

#FMXDAT
pacman::p_install_gh("Nicktz/fmxdat", force = T)
fmxdat::make_project(FilePath = "C:/Users/Andre/Documents/Evening_test", ProjNam = "Evening test")

#Texevier
install.packages(c('tinytex', 'rmarkdown'))
tinytex::install_tinytex()

if (!require("devtools")) install.packages("devtools")
library(devtools)
devtools::install_github("Nicktz/Texevier")
library(Texevier)
dir <- "C:/Users/Andre/Documents/20238932/20238932/Question 3_Texevier" # Ideally choose an empty folder.
template_name = "20238932_Texevier report Question 3"
create_template(directory = dir, template_name = template_name, build_project = TRUE, open_project = TRUE)

install.packages("huxtable")
library(huxtable)

movies_data<- read.csv("C:/Users/Andre/Documents/20238932/20238932/data/Movies/Movies.csv")

point_graph<-function(Data, Title, Subtitle){
  Data %>% 
    select()
  
  
  
}

g<-point_graph

library(readxl)
library(data.table)
#loading data
library(data.table)
setwd("C:/Users/Andre/Documents/Final_practice 23 May,/Final_practice_23 May/data/Happy")
files<-list.files(pattern = ".csv")
temp<-lapply(files, fread, sep=",")
data<-rbindlist(temp)
#write.csv(data, file = "happy_group.csv", row.names = FALSE)

data<-fortify(data)
tidy_data<-data


movies_data<- read.csv("C:/Users/Andre/Documents/Final_practice 23 May,/Final_practice_23 May/data/Movies/Movies.csv")

wine_data<-readRDS("C:/Users/Andre/Documents/Mock_test/Mock_Prac (3)/Mock_Prac/Wine/WineMag.rds")


library(readxl)
read_book<-read_xlsx("C:/Users/Andre/Documents/Excel_book_test/Book1.xlsx")



