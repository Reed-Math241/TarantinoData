## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)
tarantino_data <- readr::read_csv("home/math241/labs/pkgGrpg/data-raw/tarantino.csv")
tarantinto_data <- usethis::use_data_raw("https://raw.githubusercontent.com/fivethirtyeight/data/master/tarantino/tarantino.csv")
usethis::use_data(tarantino_data, overwrite = TRUE)
