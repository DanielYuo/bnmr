
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bnmr

The goal of bnmr is to …

## Installation

You can install the released version of bnmr from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("bnmr")
```

For now, to install `bnmr`, do the following:

``` r
# install.packages("devtools")
devtools::install_github("philip-khor/bnmr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bnmr)
current_base_rates <- base_rate()
head(current_base_rates)
#>   bank_code                                                 bank_name
#> 1  BKKBMYKL                                       Bangkok Bank Berhad
#> 2  CIBBMYKL                                          CIMB Bank Berhad
#> 3  CITIMYKL                                           Citibank Berhad
#> 4  HLBBMYKL                           Hong Leong Bank Malaysia Berhad
#> 5  HBMBMYKL                                 HSBC Bank Malaysia Berhad
#> 6  ICBKMYKL Industrial and Commercial Bank of China (Malaysia) Berhad
#>   base_rate base_lending_rate indicative_eff_lending_rate
#> 1      4.72              7.37                        5.92
#> 2      4.25              7.10                        5.00
#> 3      3.90              7.05                        4.70
#> 4      4.13              7.14                        5.00
#> 5      3.89              6.99                        5.00
#> 6      4.02              6.95                        4.75
#>   base_financing_rate
#> 1                  NA
#> 2                  NA
#> 3                  NA
#> 4                  NA
#> 5                  NA
#> 6                  NA
```
