# Beyond

> "End? No, the journey doesn't end here."
>
> --- **J.R.R. Tolkien**

After reading this chapter you will be able to:

- Understand the roadmap to continued education about models and the `R` programming language.

## What's Next

So you've completed STAT 420, where do you go from here? Now that you understand the basics of linear modeling, there is a wide world of applied statistics waiting to be explored. We'll briefly detail some resources and discuss how they relate to what you have learned in STAT 420.

## RStudio

RStudio has recently released version 1.0! This is exciting for a number of reason, especially the release of [`R` Notebooks](http://rmarkdown.rstudio.com/r_notebooks.html){target="_blank"}. `R` Notebooks combine the RMarkdown you have already learned with the ability to work interactively.

## Tidy Data

In this textbook, much of the data we have seen has been nice and tidy. It was rectangular where each row is an observation and each column is a variable. This is not always the case! Many packages have been developed to deal with data, and force it into a nice format, which is called [tidy data](http://vita.had.co.nz/papers/tidy-data.pdf){target="_blank"}, that we can then use for modeling. Often during analysis, this is where a large portion of your time will be spent.

The `R` community has started to call this collection of packages the [Tidyverse](http://tidyverse.org/){target="_blank"}. It was once called the Hadleyverse, as [Hadley Wickham](http://hadley.nz/){target="_blank"} has authored so many of the packages. Hadley is writing a book called [`R` for Data Science](http://r4ds.had.co.nz/){target="_blank"} which describes the use of many of these packages. (And also how to use some to make the modeling process better!) This book is a great starting point for diving deeper into the `R` community. The two main packages are [`dplyr`](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html){target="_blank"} and [`tidyr`](https://blog.rstudio.org/2014/07/22/introducing-tidyr/){target="_blank"} both of which are used internally in RStudio.

## Visualization

In this course, we have mostly used the base plotting methods in `R`. When working with tidy data, many users prefer to use the [`ggplot2`](https://ggplot2.tidyverse.org/){target="_blank"} package, also developed by Hadley Wickham. RStudio provides a rather detailed ["cheat sheet"](https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-visualization.pdf){target="_blank"} for working with `ggplot2`. The community maintains a [graph gallery](http://www.r-graph-gallery.com/portfolio/ggplot2-package/){target="_blank"} of examples.

Use of the [`manipulate` package](https://support.rstudio.com/hc/en-us/articles/200551906-Interactive-Plotting-with-Manipulate){target="_blank"} with RStudio gives the ability to quickly change a static graphic to become interactive.

## Web Applications

RStudio has made it incredible easy to create data products through the use of [Shiny](https://shiny.rstudio.com/){target="_blank"}, which allows for the creation of web applications with `R`. RStudio maintains an ever-growing [tutorial](http://shiny.rstudio.com/tutorial/){target="_blank"} and [gallery](https://shiny.rstudio.com/gallery/){target="_blank"} of examples.

## Experimental Design

In the ANOVA chapter, we briefly discussed experimental design. This topic could easily be its own class, and is currently an area of revitalized interest with the rise of [A/B testing.](https://en.wikipedia.org/wiki/A/B_testing){target="_blank"} Two more classic statistical references include *Statistics for Experimenters* by Box, Hunter, and Hunter as well as *Design and Analysis of Experiments* by Douglas Montgomery. There are several `R` packages for design of experiments, list in the [CRAN Task View](https://cran.r-project.org/web/views/ExperimentalDesign.html){target="_blank"}.

## Machine Learning

Using models for prediction is the key focus of machine learning. There are many methods, each with its own package, however `R` has a wonderful package called [`caret`, *Classification And REgression Training*,](http://topepo.github.io/caret/index.html){target="_blank"} which provides a unified interface to training these models. It also contains various utilities for data processing and visualization that are useful for predictive modeling. 

*Applied Predictive Modeling* by Max Kuhn, the author of the `caret` package is a good general resource for predictive modeling, which obviously utilizes `R`. [*An Introduction to Statistical Learning*](http://www-bcf.usc.edu/~gareth/ISL/){target="_blank"} by James, Witten, Hastie, and Tibshirani is a gentle introduction to machine learning from a statistical perspective which uses `R` and picks up right where this courses stops. This is based on the often referenced [*The Elements of Statistical Learning*](https://web.stanford.edu/~hastie/Papers/ESLII.pdf){target="_blank"} by Hastie, Tibshirani, and Friedman. Both are freely available online.

### Deep Learning

While, it probably isn't the best tool for the job, `R` now has the ability to [train deep neural networks via TensorFlow](https://rstudio.github.io/tensorflow/){target="_blank"}.

## Time Series

In this class we have only considered independent data. What if data is dependent? Time Series is the area of statistics which deals with this issue, and could easily span multiple courses.

The primary textbook for STAT 429: Time Series Analysis at the University of Illinois that is free is:

- [*Time Series Analysis and Its Applications: With R Examples*](http://www.stat.pitt.edu/stoffer/tsa4/){target="_blank"} by Shumway and Stoffer

Some tutorials:

- [Little Book of R for Time Series](https://a-little-book-of-r-for-time-series.readthedocs.io/en/latest/){target="_blank"}
- [Quick `R`: Time Series and Forecasting](http://www.statmethods.net/advstats/timeseries.html){target="_blank"}
- [TSA: Start to Finish Examples](http://rpubs.com/ryankelly/ts6){target="_blank"}

When performing time series analysis in `R` you should be aware of the [many packages](https://cran.r-project.org/web/views/TimeSeries.html){target="_blank"} that are useful for analysis. It should be hard to avoid the [`forecast`](https://github.com/robjhyndman/forecast){target="_blank"} and [`zoo`](https://cran.r-project.org/web/packages/zoo/zoo.pdf){target="_blank"} packages. Often the most difficult part will be dealing with time and date data. Make sure you are utilizing one of the many packages that help with this.

## Bayesianism

In this class, we have worked within the frequentist view of statistics. There is an entire alternative universe of Bayesian statistics.

[*Doing Bayesian Data Analysis: A Tutorial with R, JAGS, and Stan*](https://sites.google.com/site/doingbayesiandataanalysis/){target="_blank"} by John Kruschke is a great introduction to the topic. It introduces the world of [probabilistic programming](https://www.cs.cornell.edu/Courses/cs4110/2016fa/lectures/lecture33.html){target="_blank"}, in particular [Stan](http://mc-stan.org/){target="_blank"}, which can be used in both `R` and Python.

## High Performance Computing

Often `R` will be called a "slow" language, for two reasons. One, because many do not understand `R`. Two, because sometimes it really is. Luckily, it is easy to extend `R` via the [`Rcpp` package](http://www.rcpp.org/){target="_blank"} to allow for faster code. Many modern `R` packages utilize `Rcpp` to achieve better performance.

## Further `R` Resources

Also, don't forget that previously in this book we have outlined a large number of [`R` resources](http://daviddalpiaz.github.io/appliedstats/introduction-to-r.html#r-resources){target="_blank"}. Now that you've gotten started with `R` many of these will be much more useful.

If any of these topics interest you, and you would like more information, please don't hesitate to start a discussion on the forums!

:)
