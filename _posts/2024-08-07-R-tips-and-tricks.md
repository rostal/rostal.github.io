---
layout: post
title: R tips and tricks
image: /assets/img/R.svg
cover-img: /assets/img/R.svg
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
    ## ℹ In index: 1.
    ## Caused by error in `error_prone_function()`:
    ## ! Random error encountered!

``` r
# Returning empty tibble for a group when encountering an error
diamonds |> group_by(cut) |> group_split() |> map_dfr(~possibly(error_prone_function)(.x))
```

    ## # A tibble: 47,424 × 10
    ##    carat cut       color clarity depth table price     x     y     z
    ##    <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ##  1  0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
    ##  2  0.24 Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
    ##  3  0.26 Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
    ##  4  0.23 Very Good H     VS1      59.4    61   338  4     4.05  2.39
    ##  5  0.3  Very Good J     SI1      62.7    59   351  4.21  4.27  2.66
    ##  6  0.23 Very Good E     VS2      63.8    55   352  3.85  3.92  2.48
    ##  7  0.23 Very Good H     VS1      61      57   353  3.94  3.96  2.41
    ##  8  0.31 Very Good J     SI1      59.4    62   353  4.39  4.43  2.62
    ##  9  0.31 Very Good J     SI1      58.1    62   353  4.44  4.47  2.59
    ## 10  0.23 Very Good G     VVS2     60.4    58   354  3.97  4.01  2.41
    ## # ℹ 47,414 more rows

This isn’t something we always want to do. In the example above it will
silently drop any group that throws an error. That can be dangerous. A
more advanced solution would still return the group name but no data.
