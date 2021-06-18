--- 
title: "Applied Statistics with R"
date: "2021-06-18"
github-repo: daviddalpiaz/appliedstats
url: 'https\://daviddalpiaz.github.io/appliedstats/'
knit: "bookdown::render_book"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib]
biblio-style: apalike
favicon: "favicon.gif"
link-citations: yes
urlcolor: cyan
description: ""
---

# Introduction

Welcome to Applied Statistics with R!

## About This Book

This book was originally (and currently) designed for use with **STAT 420**, *Methods of Applied Statistics*, at the University of Illinois at Urbana-Champaign. It may certainly be used elsewhere, but any references to "this course" in this book specifically refer to STAT 420.

This book is under active development. When possible, it would be best to always access the text online to be sure you are using the most up-to-date version. Also, the html version provides additional features such as changing text size, font, and colors. If you are in need of a local copy, a [**pdf version** is continuously maintained](http://daviddalpiaz.github.io/appliedstats/applied_statistics.pdf){target="_blank"}, however, because a pdf uses pages, the formatting may not be as functional. (In other words, the author needs to go back and spend some time working on the pdf formatting.)

Since this book is under active development you may encounter errors ranging from typos, to broken code, to poorly explained topics. If you do, please let us know! Simply send an email and we will make the changes as soon as possible. (`dalpiaz2 AT illinois DOT edu`) Or, if you know RMarkdown and are familiar with GitHub, [make a pull request and fix an issue yourself!](https://github.com/daviddalpiaz/appliedstats){target="_blank"} This process is partially automated by the edit button in the top-left corner of the html version. If your suggestion or fix becomes part of the book, you will be added to the list at the end of this chapter. We'll also link to your GitHub account, or personal website upon request.

This text uses [MathJax](https://www.mathjax.org/){target="_blank"} to render mathematical notation for the web. Occasionally, but rarely, a JavaScript error will prevent MathJax from rendering correctly. In this case, you will see the "code" instead of the expected mathematical equations. From experience, this is almost always fixed by simply refreshing the page. You'll also notice that if you right-click any equation you can obtain the MathML Code (for copying into Microsoft Word) or the TeX command used to generate the equation.

$$
a^2 + b^2 = c^2
$$

## Conventions

`R` code will be typeset using a `monospace` font which is syntax highlighted.


```r
a = 3
b = 4
sqrt(a ^ 2 + b ^ 2)
```

`R` output lines, which would appear in the console will begin with `##`. They will generally not be syntax highlighted.


```
## [1] 5
```

We use the quantity $p$ to refer to the number of $\beta$ parameters in a linear model, **not** the number of predictors. Don't worry if you don't know what this means yet!

## Acknowledgements

Material in this book was heavily influenced by:

- [Alex Stepanov](https://stat.illinois.edu/directory/profile/stepanov)
    - Longtime instructor of STAT 420 at the University of Illinois at Urbana-Champaign. The author of this book actually took Alex's STAT 420 class many years ago! Alex provided or inspired many of the examples in the text.
- [David Unger](http://publish.illinois.edu/dunger/){target="_blank"}
    - Another STAT 420 instructor at the University of Illinois at Urbana-Champaign. Co-taught with the author during the summer of 2016 while this book was first being developed. Provided endless hours of copy editing and countless suggestions.
- [James Balamuta](http://www.thecoatlessprofessor.com/){target="_blank"}
    - Current graduate student at the University of Illinois at Urbana-Champaign. Provided the initial push to write this book by introducing the author to the [`bookdown`](https://bookdown.org/yihui/bookdown/){target="_blank"} package in `R`. Also a frequent contributor via GitHub.

Your name could be here! Suggest an edit! Correct a typo! If you submit a correction and would like to be listed below, please provide your name as you would like it to appear, as well as a link to a GitHub, LinkedIn, or personal website.

- [Daniel McQuillan](https://github.com/dmcquillan314){target="_blank"}
- [Mason Rubenstein](https://github.com/mruben09){target="_blank"}
- [Yuhang Wang](https://github.com/yuhangwang){target="_blank"}
- Zhao Liu
- [Jinfeng Xiao](https://github.com/JinfengXiao){target="_blank"}
- [Somu Palaniappan](https://www.linkedin.com/in/somupalaniappan){target="_blank"}
- [Michael Hung-Yiu Chan](https://www.linkedin.com/in/michaelchan2newyork){target="_blank"}
- [Eloise Rosen](https://github.com/EloiseRosen){target="_blank"}
- [Kiomars Nassiri](https://www.linkedin.com/in/kiomars-nassiri-kahnamooee/){target="_blank"}
- [Jeff Gerlach](https://github.com/jeffgerlach){target="_blank"}
- [Brandon Ching](https://github.com/linuxdream){target="_blank"}
- [Ray Fix](https://github.com/rayfix){target="_blank"}
- [Tyler Kim](https://github.com/tyler-thetyrant/){target="_blank"}
- [Yeongho Kim](https://github.com/yeonghoey/){target="_blank"}
- [Elmar Langholz](https://github.com/langholz/){target="_blank"}
- [Thai Duy Cuong Nguyen](https://www.linkedin.com/in/dnguyen5){target="_blank"}
- [Junyoung Kim](https://github.com/junkim327){target="_blank"}
- [Sezgin Kucukcoban](https://www.linkedin.com/in/ksezgin){target="_blank"}
- [Tony Ma](https://www.linkedin.com/in/tony-ma-b978143a/){target="_blank"}
- [Radu Manolescu](https://www.linkedin.com/in/radumanolescu1/){target="_blank"}
- [Dileep Pasumarthi](https://www.linkedin.com/in/dileep-pasumarthi-75a53345/){target="_blank"}
- Sihun Wang
- [Joseph Wilson](https://github.com/greenfacts){target="_blank"}
- [Yingkui Lin](https://github.com/lin){target="_blank"}
- [Andy Siddall](https://www.researchgate.net/profile/Andy_Siddall){target="_blank"}
- [Nishant Balepur](https://github.com/nbalepur){target="_blank"}
- [Durga Krovi](https://github.com/dkrovi2){target="_blank"}
- [Raj Krishnan](https://www.rajkrishnan.dev){target="_blank"}
- [Ed Pureza](https://github.com/purecod3){target="_blank"}

## License

![This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).](images/cc.png)
