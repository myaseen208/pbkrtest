
## `pbkrtest`: Parametric Bootstrap and Kenward Roger Based Methods for Mixed Model Comparison

###### Version : [0.4.8](https://myaseen208.github.io/pbkrtest/); Copyright (C) 2017-2020:; License: [GPL-2|GPL-3](https://www.r-project.org/Licenses/)

##### *Ulrich Halekoh*<sup>1</sup> and *Søren Højsgaard*<sup>2</sup>

1.  Associate Professor, Department of Public Health, University of
    Southern Denmark, Denmark (<uhalekoh@health.sdu.dk>)
2.  Head of Department of Mathematical Sciences and Associate Professor
    of statistics at Aalborg University (<sorenh@math.aau.dk>)

-----

[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.3.0-6666ff.svg)](https://cran.r-project.org/)
[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version-last-release/pbkrtest)](https://cran.r-project.org/package=pbkrtest)
[![rstudio mirror
downloads](https://cranlogs.r-pkg.org/badges/grand-total/pbkrtest?color=green)](https://CRAN.R-project.org/package=pbkrtest)
<!-- [![packageversion](https://img.shields.io/badge/Package%20version-0.2.3.3-orange.svg)](https://github.com/myaseen208/pbkrtest) -->

[![develVersion](https://img.shields.io/badge/devel%20version-0.4-8-orange.svg)](https://github.com/myaseen208/pbkrtest)

<!-- [![GitHub Download Count](https://github-basic-badges.herokuapp.com/downloads/myaseen208/pbkrtest/total.svg)] -->

[![Project Status:
WIP](http://www.repostatus.org/badges/latest/inactive.svg)](http://www.repostatus.org/#inactive)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![Last-changedate](https://img.shields.io/badge/last%20change-2020--02--20-yellowgreen.svg)](https://github.com/myaseen208/pbkrtest)
[![Rdoc](http://www.rdocumentation.org/badges/version/pbkrtest)](http://www.rdocumentation.org/packages/pbkrtest)

-----

## Description

Test in mixed effects models. Attention is on mixed effects models as
implemented in the ‘lme4’ package. This package implements a parametric
bootstrap test and a Kenward Roger modification of F-tests for linear
mixed effects models and a parametric bootstrap test for generalized
linear mixed models.

## Installation

The package can be installed from CRAN as follows:

``` r
install.packages("pbkrtest", dependencies = TRUE)
```

The development version can be installed from github as follows:

``` r
if (!require("remotes")) install.packages("remotes")
remotes::install_github("myaseen208/pbkrtest")
```

## Detailed tutorial

For a detailed tutorial (vignette) on how to used this package type:

``` r
browseVignettes(package = "pbkrtest")
```

The vignette for the latest version is also available
[online](https://myaseen208.github.io/pbkrtest/articles/Intro_pbkrtest.pdf).

## What’s new

To know whats new in this version type:

``` r
news(package = "pbkrtest")
```

## Links

[CRAN page](https://cran.r-project.org/package=pbkrtest)

[Github page](https://github.com/myaseen208/pbkrtest)

[Documentation website](https://myaseen208.github.io/pbkrtest/)

## Citing `pbkrtest`

To cite the methods in the package use:

``` r
citation("pbkrtest")
```

``` 

To cite pbkrtest in publications use:

  Ulrich Halekoh, Søren Højsgaard (2014). A Kenward-Roger Approximation
  and Parametric Bootstrap Methods for Tests in Linear Mixed Models -
  The R Package pbkrtest. Journal of Statistical Software, 59(9), 1-30.
  URL http://www.jstatsoft.org/v59/i09/.

A BibTeX entry for LaTeX users is

  @Article{,
    title = {A Kenward-Roger Approximation and Parametric Bootstrap Methods for Tests in Linear Mixed Models -- The {R} Package {pbkrtest}},
    author = {Ulrich Halekoh and S{\o}ren H{\o}jsgaard},
    journal = {Journal of Statistical Software},
    year = {2014},
    volume = {59},
    number = {9},
    pages = {1--30},
    url = {http://www.jstatsoft.org/v59/i09/},
  }
```
