library(ggplot2)
library(dplyr)

library(tidyverse)

df <- read_csv("refugio.csv")
# EJ1

cantidad_animales = length(df$animal_type)


#Distribucion Devolucion
df |> filter(desenlace=='Devolucion',los<30)  |> ggplot(mapping=aes(x=los))+
  geom_histogram()


#Distribucion Transferencia
df |> filter(desenlace=='Transferencia',los<120)  |> ggplot(mapping=aes(x=los))+
  geom_histogram()


#Distribucion Adopcion
df |> filter(desenlace=='Adopcion')  |> ggplot(mapping=aes(x=los))+
  geom_histogram()

#Distribucion Muerte
df |> filter(desenlace=='Muerte',los<120)  |> ggplot(mapping=aes(x=los))+
  geom_histogram()


head(df,5)
glimpse(df)
summary(df)

d
