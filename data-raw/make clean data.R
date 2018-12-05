### making our data


cats <- read.csv("https://raw.githubusercontent.com/jalapic/learnR/master/datasets/aac_shelter_cat_outcome_eng.csv")

write.csv(cats, "data-raw/cats.csv", row.names = F)

cats <- read.csv("data-raw/cats.csv", stringsAsFactors = F)

cats$name <- gsub("\\*", "", cats$name)
cats$name <- tolower(cats$name)

devtools::use_data(cats, overwrite = T)
