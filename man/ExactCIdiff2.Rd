\name{Exact one-sided and two-sided 1-alpha confidence interval, main functions}
\alias{BinomialCIone}
\alias{PairedCIone}
\title{Inductive confidence intervals for the difference between two proportions}
\description{
The function BinomialCIone and PairedCIone are the called functions for the main function BinomCI and PairedCI, respectively.         
}

\arguments{
 \item{n12}{the number of subjects in the paired study who have success from the treatment and failure from the control}
  \item{t}{the number of subjects in the paired study who have the same results from the treatment and control, t=n11+n22}
  \item{n21}{the number of subjects in the paired study who have success from the contol and failure from the treatment}
  \item{conf.level}{Confience level, 95\% is the default value.}
  \item{CItype}{c("Lower","Upper","Two.sided"), lower one-sided confidence interval [L,1], upper one-sided confidence interval [-1,U], two-sided confidence interval [L,U], "Two.sided" is the default value}
  \item{precision}{Precision of the confidence interval, default is 0.00001 rounded to 5 decimals}
  \item{grid.one}{two-step grid search algorithm is used. grid.one is the number of points for searching the global maximum of the tail probability in the first step. 30 is the default value}   
  \item{grid.two}{grid.two is the number of points for searching the global maximum of the tail probability in the second step. 20 is the default value}   
  }
  
\value{
PairedCI gives the estimate of (p1-p2), which is (n12/-n21)/(n12+t+n21), and the exact confidence interval.
}
