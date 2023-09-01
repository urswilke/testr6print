
<!-- README.md is generated from README.Rmd. Please edit that file -->

# testr6print

The goal of testr6print is to show how to modify the printing behaviour
of a subclass of the `"tbl_df"` class in the tibble package. The part
that made it work (I believe) was to add the `@importFrom` and `@export`
comments.

    #' @importFrom pillar ctl_new_rowid_pillar
    #' @export

## Installation

You can install the development version of testr6print like so (but it
should also be enough to just browse in this git repo).

``` r
devtools::install_github("urswilke/testr6print")
```

## Example

This is a basic example which shows you how the modified tibble print of
the object in a field of the dummy class

``` r
library(testr6print)
MyClass$new()
#>       test 2
#>        <dbl>
#> test       1
```
