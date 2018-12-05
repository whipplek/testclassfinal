#' Get cats by name
#'
#' @param df a dataset with column name
#' @param text partial name of a cat
#' @return the names of cats in descending popularity
#' @example
#'cat_name (casts, "nut")
#' @export


cat_name <- function(df, text ="nut") {

library(tidyverse)

df  %>%
  filter(grepl(text, name)) %>%
group_by(name) %>%
  tally() %>%
arrange (-n)

}
