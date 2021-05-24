#Code for Question 1

#Rotten Tomatoes plot
library(tidyverse)

view(movies_data)
movies_data %>% 
  select("Rotten.Tomatoes..") %>% 
  filter(Rotten.Tomatoes..>80) %>% 
ggplot()+
  geom_point(aes(x= "Rotten.Tomatoes..", y="Audience rating"))+
  labs(title = "Movies with excellent ratings", subtitle= "Movie Data", x = "Rotten.Tomatoes..", y = "Audience rating")




#Disney profitability plot

  movies_data %>% 
    select("Lead.Studio", "Profitability") %>% 
    ggplot()+
    geom_point(aes(x= "Lead.Studio", y="Profitability"))+
    labs(title = "Profitability of Lead Studio's", subtitle= "Movie Data", x = "Lead Studio", y = "Profitability")+
    scale_color_manual(values=c("dodgerblue4", "darkolivegreen4",
                                "darkorchid3", "goldenrod1"))







