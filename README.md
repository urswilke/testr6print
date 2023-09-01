
<!-- README.md is generated from README.Rmd. Please edit that file -->

# testr6print

The goal of testr6print is to show how to modify the printing behaviour
of a subclass of the `"tbl_df"` class in the tibble package. The part
that made it work (I believe) was to add the `@importFrom` and `@export`
comments (see the changed tibble print
[here](https://github.com/urswilke/testr6print/commit/98f225b68ed3feebc6800830904681b93738ff0a#diff-b11b52486f7c60d184d1d0c3f5ae88135db04d13d209d4be06da37888af2fbb5)).

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
