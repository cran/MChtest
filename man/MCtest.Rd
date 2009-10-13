\name{MCtest}
\alias{MCtest}
\alias{MCtest.fixed}
%\alias{MCtest.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Perform Monte Carlo hypothesis tests.}
\description{
Performs Monte Carlo hypothesis test with either a fixed number of resamples or a sequential stopping boundary on
the number of resamples. Outputs p-value and confidence 
interval for p-value. The program is very general and different bootstrap or permutation tests may be done 
by defining the statistic function and the resample function. 
}
\usage{
MCtest(x, statistic, resample, bound, extreme = "geq", seed = 1234325)
MCtest.fixed(x, statistic, resample, Nmax, extreme = "geq", conf.level=.99, seed = 1234325)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{data object}
  \item{statistic}{function that inputs data object, x, and outputs a scalar numeric}
  \item{resample}{function that inputs data object,x, and outputs a "resampling" of x, 
an object of the same type as x}
  \item{Nmax}{the number of resamples for the fixed boundary}
  \item{bound}{a object of class MCbound, can be created by \code{\link{MCbound}} see that help}
  \item{extreme}{character value either "geq" or "leq". 
Defines which Monte Carlo outputs from statistic (T1,T2,...) are denoted extreme with respect to the original 
output (T0) ; extreme values are either all Ti >= T0 ("geq") or all Ti <= T0 ("leq"). } 
\item{conf.level}{confidence level for interval about p-value}
  \item{seed}{a numeric value used in set.seed}
}
\details{
Performs Monte Carlo hypothesis test. \code{MCtest} allows any types of Monte Carlo boundary created by \code{\link{MCbound}},
while \code{MCtest.fixed} only performs Monte Carlo tests using fixed boundaries. The only advantage of \code{MCtest.fixed}
is that one can do the test without first creating the fixed stopping boundary through \code{MCbound}. The default boundary 
is described in \code{\link{MCbound.precalc1}}. 

Let T0=statistic(x) and let T1,T2,... be statistic(resample(x)). Then in the simplest type of boundary, 
the "fixed" type, then the resulting p-value is p=(S+1)/(N+1), where S=(\# Ti >= T0) (if extreme is "geq") or  
S=(\# Ti <= T0) (if extreme is "leq"). The confidence interval on the p-value is calculated by an exact method.  

There are several different types of MC designs that may be used for the MCtest. These are described in the 
\code{\link{MCbound}} help.
}
\value{A LIST of class "MCtest",with elements:
  \item{Ti }{an N vector of the outputs of the resampled statistic}
  \item{type}{type of boundary: "fixed", "tsprt", "Bvalue" or "BC"}
  \item{parms}{vector of parameters that define boundary specified by type}
 \item{T0}{the value of the test statistic applied to the original data}
  \item{p.value}{p.value}
  \item{pvalue.ci}{confidence interval about the p-value}
}
\references{ 
Fay, M.P., Kim, H-J. and Hachey, M. (2007). Using truncated sequential probability ratio test boundaries 
for Monte Carlo implementation of hypothesis tests. Journal of Computational and Graphical 
Statistics. 16(4):946-967. 
 }
\author{M.P. Fay}
%\note{}
\seealso{\code{\link{MCbound}},\code{\link{MCbound.precalc1}} }
\examples{
x<-data.frame(y=1:100,z=rnorm(100),group=c(rep(1,50),rep(2,50)))
stat<-function(x){ cor(x[,1],x[,2]) }
### nonparametric bootstrap test on correlation between y and z
### low p-value means that such a large correlation unlikely due to chance
resamp<-function(x){ n<-dim(x)[[1]] ; x[sample(1:n,replace=TRUE),] }
out<-MCtest(x,stat,resamp,extreme="geq") 
out$p.value
out$p.value.ci
### permutation test, permuting y only within group
resamp<-function(x){ 
    ug<-unique(x[,"group"])
    y<- x[,"y"]
    for (i in 1:length(ug)){
         pick.strata<- x[,"group"]==ug[i]
         y[pick.strata]<-sample(y[pick.strata],replace=FALSE)
    }
    x[,1]<-y
    x 
}

out<-MCtest.fixed(x,stat,resamp,N=199) 
out$p.value
out$p.value.ci
}
\keyword{htest}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
