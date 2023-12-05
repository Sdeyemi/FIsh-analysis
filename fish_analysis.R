install.packages(c("dplyr","usethis", "gitcreds")) #gitcreds - get credentials
library(usethis)
use_git_config(user.name = "Samuel Adewale", user.email = "asamuel646@gmail.com")
download.file("https://datacarpentry.org/semester-biology/data/Gaeta_etal_CLC_data.csv","Gaeta_etal_CLC_data.csv")


library("dplyr")
fish_data = read.csv("Gaeta_etal_CLC_data.csv")

fish_data_cat <- fish_data|> 
  mutate(length_cat <- ifelse(length > 200, "big", "small"))
