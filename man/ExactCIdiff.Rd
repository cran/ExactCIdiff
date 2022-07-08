\name{Exact one-sided and two-sided 1-alpha confidence interval two independent proportions}
\alias{BinomCI}
\title{Inductive confidence intervals for the Difference Between Two Proportions}
\description{
Three exact confidence intervals (two-sided, smallest lower one-sided and  smallest upper one-sided)  of level 1-alpha are constructed for p1-p2,
 the difference of two independent proportions. 
 
X follows Binomial(n1,p1), Y follows Binomial(n2,p2) and X and Y are independent. Intervals [L(X,Y),1], [-1,U(X,Y)] and [L(X,Y),U(X,Y)] are of interest. 
 
 This package can be used to calculate these intervals using an inductive method
  developed by Wang (2010).           
}

\usage{
BinomCI(n1,n2,x,y,conf.level,CItype,precision,grid.one,grid.two)
}
\arguments{
  \item{n1}{the number of trials in the first group in the parallel two-arm study}
  \item{n2}{the number of trials in the second group in the parallel two-arm study}
  \item{x}{the number of successes from the first group in the parallel two-arm study}
  \item{y}{the number of successes from the second group in the parallel two-arm study}
  \item{conf.level}{Confience level, 95\% is the default value.}
  \item{CItype}{c("Lower","Upper","Two.sided"), lower one-sided confidence interval [L,1], upper one-sided confidence interval [-1,U], two-sided confidence interval [L,U], "Two.sided" is the default value}
  \item{precision}{Precision of the confidence interval, default is 0.00001 rounded to 5 decimals}
  \item{grid.one}{two-step grid search algorithm is used. grid.one is the number of points for searching the global maximum of the tail probability in the first step. 30 is the default value}   
  \item{grid.two}{grid.two is the number of points for searching the global maximum of the tail probability in the second step. 20 is the default value}   
  }

\details{
 
An inductive construction is carried out to obtain one-sided interval. At each step we rank sample 
 point by its potential confidence interval and then select the one with the
  shortest interval. The difference of the two proportions is the parameter of interest.
   There is a nuisance parameter in the tail probability 
   (Eq (6) in Wang 2010). The nuisance parameter is 
   eliminated by the maximization originally proposed by Buehler (1957).
    A two-step grid search algorithm is applied to find the maximum. 
    The first step is to roughly identify a neighbor area of the global 
    maximization of the tail probability,  more points used more accurate results achieved. 
    We recommend to use grid.one at least 30 to have accurate confidence intervals. 
 The second step is to search for maximum within that smaller neighbor area, and  grid.two should be
 at least 20. We find that this two-step grid search algorithm works much more accurate and efficient 
 than the traditional one-step grid search algorithm. 1-alpha two-sided interval is equal to the 
 intersection of two 1-alpha/2 one-sided intervals.

Details and more examples see: http://www.wright.edu/~weizhen.wang/software/ExactTwoProp/examples.pdf
}

\value{
BinomCI gives the estimate of (p1-p2), which is x/n1-y/n2, and the exact confidence interval.

}


\examples{

#lower one-sided confidence interval with n1=4,n2=1,x=2,and y=0 in Wang 2010 
BinomCI(4,1,2,0,CItype="Lower")

#Upper one-sided confidence interval with n1=4,n2=1,x=2,and y=0.
BinomCI(4,1,2,0,CItype="Upper")


#Two-sided 90\% confidence intervals
BinomCI(5,5,4,2,conf.level=0.9,CItype='Two.sided')

}



\references{

Wang, W. (2010). On construction of the smallest one-sided confidence interval for the difference of two proportions. The Annals of Statistics, 38, 1227--1243.

Buehler, R. (1957). Confidence intervals for the porduct of two binomial parameters. JASA, 52, 482--493.
}

