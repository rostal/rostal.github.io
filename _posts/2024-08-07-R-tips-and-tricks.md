---
layout: post
title: R tips and tricks
image: /assets/img/R.svg
share-img: /assets/img/R.svg
tags: [machine learning]
---

# Here are some random R tips and tricks that might be useful to you, or more likely, useful to me when I forget how I did the thing and need to remind myself.

## 1. Error safe mapping

Have you ever run into the problem where you map over a dataset or a
vector of values but sometimes encounter an error? This can be extremely
annoying because even if the error is rare it interrupts the entire
process. This could be an external API call that fails randomly or some
other error prone function applied to a list. As it turns out it isn’t
hard to make `map_dfr()` just keep going if it returns an error. How? By
using {purrr}::possibly()!

``` r
error_prone_function <- function(x) {
  if(runif(1) < 0.5) stop("Random error encountered!")
  x
}

# Stopping on any error
diamonds |> group_by(cut) |> group_split() |> map_dfr(~error_prone_function(.x))
```

    ## Error in `map()`:
    ## ℹ In index: 3.
    ## Caused by error in `error_prone_function()`:
    ## ! Random error encountered!

``` r
# Returning empty tibble for a group when encountering an error
diamonds |> group_by(cut) |> group_split() |> map_dfr(~possibly(error_prone_function)(.x))
```

    ## # A tibble: 13,791 × 10
    ##    carat cut     color clarity depth table price     x     y     z
    ##    <dbl> <ord>   <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ##  1  0.21 Premium E     SI1      59.8    61   326  3.89  3.84  2.31
    ##  2  0.29 Premium I     VS2      62.4    58   334  4.2   4.23  2.63
    ##  3  0.22 Premium F     SI1      60.4    61   342  3.88  3.84  2.33
    ##  4  0.2  Premium E     SI2      60.2    62   345  3.79  3.75  2.27
    ##  5  0.32 Premium E     I1       60.9    58   345  4.38  4.42  2.68
    ##  6  0.24 Premium I     VS1      62.5    57   355  3.97  3.94  2.47
    ##  7  0.29 Premium F     SI1      62.4    58   403  4.24  4.26  2.65
    ##  8  0.22 Premium E     VS2      61.6    58   404  3.93  3.89  2.41
    ##  9  0.22 Premium D     VS2      59.3    62   404  3.91  3.88  2.31
    ## 10  0.3  Premium J     SI2      59.3    61   405  4.43  4.38  2.61
    ## # ℹ 13,781 more rows

This isn’t something we always want to do. In the example above it will
silently drop any group that throws an error. That can be dangerous. A
more advanced solution would still return the group name but no data.
