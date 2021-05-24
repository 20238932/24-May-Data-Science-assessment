#Loading data for Question 2


library(readxl)
library(data.table)
#loading data

data_forbes<-function(data){
  library(data.table)
  setwd("C:/Users/Andre/Documents/20238932/20238932/data/Forbes")
  files<-list.files(pattern = ".csv")
  temp<-lapply(files, fread, sep=",")
  data<-rbindlist(temp)
  #write.csv(data, file = "happy_group.csv", row.names = FALSE)
  
  
  data
}
  
#Plotting the net worth of individuals
data %>% 
  select("Name", "NetWorth") %>%
  ggplot()+
  geom_point(aes(x= "Name", y="Networth"))+
  labs(title = "Networth of Most Wealthy Individuals", subtitle= "Forbes data", x = "Names", y = "Networth")+
  scale_color_manual(values=c("dodgerblue4", "darkolivegreen4",
                              "darkorchid3", "goldenrod1"))


#Plotting the country of origin of wealthy individuals


data %>% 
  select("Name", "Country") %>%
  ggplot()+
  geom_point(aes(x= "Name", y="Country"))+
  labs(title = "Country of origin of wealthy individuals", subtitle= "Forbes data", x = "Names", y = "Networth")+
  scale_color_manual(values=c("dodgerblue4", "darkolivegreen4",
                              "darkorchid3", "goldenrod1"))


  