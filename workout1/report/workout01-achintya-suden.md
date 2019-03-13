Workout 1
================
Achintya Suden
March 3, 2019

*Oakland News*
==============

Shooting Stats of the GSW
-------------------------

### Images

<img src="../images/gsw-shot-chart.png" width="80%" style="display: block; margin: auto;" />

#### Stephen Curry

![](../images/Curry.png)

#### Draymond Green

![](../images/draymond.jpg)

#### Kevin Durant

![](../images/durant.jpg)

#### Andre Iguodala

![](../images/andre.jpg)

#### Klay Thompson

![](../images/klay.jpg)

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    ## Warning: `as_dictionary()` is soft-deprecated as of rlang 0.3.0.
    ## Please use `as_data_pronoun()` instead
    ## This warning is displayed once per session.

    ## Warning: `new_overscope()` is soft-deprecated as of rlang 0.2.0.
    ## Please use `new_data_mask()` instead
    ## This warning is displayed once per session.

    ## Warning: The `parent` argument of `new_data_mask()` is deprecated.
    ## The parent of the data mask is determined from either:
    ## 
    ##   * The `env` argument of `eval_tidy()`
    ##   * Quosure environments when applicable
    ## This warning is displayed once per session.

    ## Warning: `overscope_clean()` is soft-deprecated as of rlang 0.2.0.
    ## This warning is displayed once per session.

### 2 Pointers

    ## # A tibble: 5 x 4
    ##             Name Total  Made Perc_Made
    ##           <fctr> <int> <int>     <dbl>
    ## 1 Andre Iguodala   210   134 0.6380952
    ## 2   Kevin Durant   643   390 0.6065319
    ## 3  Stephen Curry   563   304 0.5399645
    ## 4  Klay Thompson   640   329 0.5140625
    ## 5 Draymond Green   346   171 0.4942197

### 3 Pointers

    ## # A tibble: 5 x 4
    ##             Name Total  Made Perc_Made
    ##           <fctr> <int> <int>     <dbl>
    ## 1  Klay Thompson   580   246 0.4241379
    ## 2  Stephen Curry   687   280 0.4075691
    ## 3   Kevin Durant   272   105 0.3860294
    ## 4 Andre Iguodala   161    58 0.3602484
    ## 5 Draymond Green   232    74 0.3189655

### Total Shots

    ## # A tibble: 5 x 4
    ##             Name Total  Made Perc_Made
    ##           <fctr> <int> <int>     <dbl>
    ## 1   Kevin Durant   915   495 0.5409836
    ## 2 Andre Iguodala   371   192 0.5175202
    ## 3  Klay Thompson  1220   575 0.4713115
    ## 4  Stephen Curry  1250   584 0.4672000
    ## 5 Draymond Green   578   245 0.4238754

#### Introduction

This report primarily concerns five of the Golden State Warriors players and analyses their shooting style, with both graphical as well as tabular visualizations. The player being analyzed are Stephen Curry, Draymond Green, Andre Iguodala, Kevin Durant and Klay Thompson, and the statistics being aggregated are their 2-pointers, 3-pointers and then just total shots made, as well as their respective success rates. All data, including the graphical representation, will be referenced in this article and is available for your viewing at the top of this report. All the data analyzed here concerns numbers from the 2016 season which was, all things considered, a pretty good season for Warriors where they only lost by 4 point.

#### Motivation

This project was primarily motivated by a need to undergo the general data analysis cycle; this report is designed to illustrate the process of data preparation, core analyses and reporting, wherein this report is the latter part of the cycle. In my opinion it is important to incorporate all these aspects when undertaking a project to truly appreciate the ultimate results, and to be a better prepared data scientist.

#### Background

This data can be viewed as the product of my own personal passion for basketball and my devotion to the Warriors as a result of living in the Bay, alongside a need to deliver the best quality of data to my company and you, my readers.

#### Data

The data in this report was largely collected from statistics that are available online on various websites about a wide range of attributes for every NBA player. The data that I was focusing on was the effective shooting percentage, per shot type, of five of the higher scoring Warriors players. These data can be seen above in the tables: '2 Pointers', '3 Pointers' and 'Total Shots'.

#### Analysis and Discussion

First let's look at the 2 Pointers table. The most obvious thing here is that, despite having the lowest number of 2 pointers, Andre Iguodala has the highest percentage of making these shots, at 63.8% of them made. These shots with include any shot made within the three-point line that is not a rebound, including layups. Almost just as impressive however is Kevin Durant's stats, where he boasts more than three times as many shots as Andre but almost just as high of a success rate, at 60.6% of total shots being made. Curry, Klay and Draymond follow with 53%, 51% and 49% of 2PTS being made, which is just as impressive of a statistic because that means on average between all these players, half of all their shots go into the basket.

Moving on to three pointers, there is a stark difference in the rankings of the players, with Klay Thompson commanding with 42% of shots being made at 580 total shots, followed closely by Stephen Curry with 687 shots at 41% being made. These statistics are quite remarkable too because both these success rates are not too far off from their 2PT success rate, which means both these players appear very well rounded and are a threat on all aspects of the court. Durant, Andre and Draymond follow these data with 38%, 36% and 32% of successful three pointers, but far less shots being made (less than 300).

Overall, Kevin Durant leads the charge with 915 total shots being made out of which 54% go through, followed by Andre Iguodala with 371 shots at 51.7% success rate and then Klay, Curry and Draymond with total shots and success rates of 1220/47%, 1250/47% and 578/42% respectively. Overall, Kevin Durant thus appears the biggest threat on the court in terms of offensive ability.

#### Conclusion

These data are a testament to the Warriors dominance in the NBA 2016 season, where they broke a drought of losses to make it all the way to the Finals, only to lose by just a few points to the Cleveland Cavaliers. I would say that the data being presented here is necessary to properly analyze the effectiveness of the GSW, but that it is not the sole piece of data that one should rely on. For example, we could also be looking at the defensive side of the team, by analyzing their blocks, turnovers and interceptions per game or per unit of time. This would paint a broader picture of the team overall as well as the overall effectiveness of each individual player. Ultimately, in the core analysis portion, it is important to have as much data as possible to make relevant conclusions, but also to only focus on what can be gleaned by a certain set of data and not extrapolate anything that can't be validated from this data available.

*Achintya Suden, Oakland News*

#### References

<https://www.goldenstateofmind.com/2018/2/21/17010344/2018-nba-golden-state-warriors-steph-curry-efficiency-deep-threes-layups> <https://www.nba.com/playoffs/2016/finals/> <https://www.basketball-reference.com/teams/GSW/2016.html>