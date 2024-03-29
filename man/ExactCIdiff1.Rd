\name{Exact one-sided and two-sided 1-alpha confidence interval for two dependent proportions}
\alias{PairedCI}
\title{Inductive confidence intervals for the Difference Between Two Proportions}
\description{
Three exact confidence intervals (two-sided, smallest lower one-sided and  smallest upper one-sided)  of level 1-alpha are constructed for p1-p2,
 the difference of two dependent proportions. 
 
A random vector (n11,n12,n21,n22) follows 
 multinomial(N, p11,p12,p21,p22) where N=n11+n12+n21+n22, 
 and p1-p2=(p11+p12)-(p11+p21)=p12-p21. Let t=n11+n22. 
 Intervals [L(n12,t,n21),1], [-1,U(n12,t,n21)] and [L(n12,t,n21),U(n12,t,n21)] are of interest. 
 
 This package can be used to calculate these intervals using an inductive method
  developed by Wang (2012).           
}

\usage{
PairedCI(n12,t,n21,conf.level,CItype,precision,grid.one,grid.two)}
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

\details{

	 An inductive construction is carried out to obtain one-sided interval. At each step we rank sample 
 point by its potential confidence interval and then select the one with the
  shortest interval. The difference of the two proportions is the parameter of interest.
   There is a nuisance parameter in the tail probability 
   (Eq (8) in Wang 2012). The nuisance parameter is 
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

PairedCI gives the estimate of (p1-p2), which is (n12/-n21)/(n12+t+n21), and the exact confidence interval.
}


\examples{


#lower one-sided confidence intervals in Table 1 of Wang 2012 
PairedCI(3,1,0,conf.level=0.95,CItype="Lower")
PairedCI(2,0,2,conf.level=0.95,CItype="Lower")

#Upper one-sided confidence intervals for the difference of two dependent proportions
PairedCI(3,1,0,CItype="Upper",conf.level=0.95)
PairedCI(1,1,2,CItype="Upper",conf.level=0.9,grid.one=40,grid.two=25)

#Two-sided 90\% confidence intervals
PairedCI(3,1,0,CItype='Two.sided',conf.level=0.9)

}


\references{

Wang, W. (2012). An inductive order construction for the difference of two dependent proportions. Statistical and Probability Letters, 82, 1623--1628.

Buehler, R. (1957). Confidence intervals for the porduct of two binomial parameters. JASA, 52, 482--493.
}

