
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this.  -->

``` r
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%"
)
```

# Profanities in Quentin Tarantino Films

<!-- badges: start -->

<!-- badges: end -->

The goal of *Profanities in Quentin Tarantino Films* dataset is to
provide a viewer’s guide on the curse words and death in Quentin
Tarantino films.

The dataset is the backstage story of the article *A Complete Catalog Of
Every Time Someone Cursed Or Bled Out In A Quentin Tarantino
Movie*(<https://fivethirtyeight.com/features/complete-catalog-curses-deaths-quentin-tarantino-films/>)

## Installation

The development version of the dataset is available from
[GitHub](https://github.com) with:
(<https://github.com/fivethirtyeight/data/tree/master/tarantino>)

``` r
# install.packages("devtools")
devtools::install_github("Reed-Math241/pkgGrpg")
```

## Example

What is the ratio of the curse and death in each movie?

``` r
library(tarantinoData)
tarantino_data <- readr::read_csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/tarantino/tarantino.csv")
curse_death_ratio <- tarantino_data %>%
  count(movie, type)
ratio <- curse_death_ratio %>%
  as.data.frame() %>%
  pivot_wider(names_from = type, values_from = n) %>%
  rename(curse = "word") %>%
  mutate(ratio = curse/death) %>%
  arrange(desc(ratio))
ratio
```
