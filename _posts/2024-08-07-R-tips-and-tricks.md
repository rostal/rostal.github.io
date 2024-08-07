---
layout: post
title: R tips and tricks
cover-image: /assets/img/R.svg
share-img: /assets/img/R.svg
tags: [machine learning]
---

Here are some random R tips and tricks that might be useful to you, or
more likely, useful to me when I forget how I did the thing and need to
remind myself.

## 1. Error safe mapping

Have you ever run into the problem where you map over a dataset or a
vector of values but sometimes encounter an error? This can be extremely
annoying because even if the error is rare it interrupts the entire
process. This could be an external API call that fails randomly or some
other error prone function applied to a list. As it turns out it isn’t
hard to make `map_dfr()` just keep going if it returns an error. How? By
using purrr::possibly()!

<p style="text-align:center;">
<a href="https://purrr.tidyverse.org"><img src="https://purrr.tidyverse.org/logo.png" width="20%"></a>
</p>

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

    ## # A tibble: 21,551 × 10
    ##    carat cut   color clarity depth table price     x     y     z
    ##    <dbl> <ord> <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ##  1  0.23 Ideal E     SI2      61.5    55   326  3.95  3.98  2.43
    ##  2  0.23 Ideal J     VS1      62.8    56   340  3.93  3.9   2.46
    ##  3  0.31 Ideal J     SI2      62.2    54   344  4.35  4.37  2.71
    ##  4  0.3  Ideal I     SI2      62      54   348  4.31  4.34  2.68
    ##  5  0.33 Ideal I     SI2      61.8    55   403  4.49  4.51  2.78
    ##  6  0.33 Ideal I     SI2      61.2    56   403  4.49  4.5   2.75
    ##  7  0.33 Ideal J     SI1      61.1    56   403  4.49  4.55  2.76
    ##  8  0.23 Ideal G     VS1      61.9    54   404  3.93  3.95  2.44
    ##  9  0.32 Ideal I     SI1      60.9    55   404  4.45  4.48  2.72
    ## 10  0.3  Ideal I     SI2      61      59   405  4.3   4.33  2.63
    ## # ℹ 21,541 more rows

This isn’t something we always want to do. In the example above it will
silently drop any group that throws an error. That can be dangerous. A
more advanced solution would still return the group name but no data.
