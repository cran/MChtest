\name{MChtest-package}
\alias{MChtest-package}
\alias{MChtest}
\docType{package}
\title{
Does Monte Carlo hypothesis tests
}
\description{
The package performs Monte Carlo hypothesis tests. It allows a couple of different sequential 
stopping boundaries (a truncated sequential probability ratio test boundary and a boundary proposed 
by Besag and Clifford, 1991). Gives valid p-values and confidence intervals on p-values.
}
\details{
\tabular{ll}{
Package: \tab MChtest\cr
Type: \tab Package\cr
Version: \tab 0.9\cr
Date: \tab 2006-09-06\cr
License: \tab GPL \cr
}
Use \code{\link{MCbound}} to create sequential stopping boundaries. These may take considerable set-up time, but once the 
stopping boundary is calculated then it can be used in \code{\link{MCtest}} to save time in computation of Monte Carlo 
hypothesis tests. The idea of the truncated sequential probability ratio test boundary is that it takes many resamples if 
the true p-value (i.e., the one from an infinite resample size) is close to the significance level (e.g., 0.05), 
but takes much fewer if the true p-value is far from the significance level.
}
\author{
Michael P. Fay

Maintainer: Michael Fay <mfay@niaid.nih.gov>
}
\references{
Besag, J. and Clifford, P. (1991). Sequential Monte Carlo p-values. Biometrika. 78: 301-304.

Fay, M.P., Kim, H-J. and Hachey, M. (2006). Using truncated sequential probability ratio test boundaries 
for Monte Carlo implementation of hypothesis tests. (unpublished manuscript). }
}
\keyword{ package }
\keyword{htest}
\seealso{ Precalculated MCbound: \code{\link{MCbound.precalc1}} }
\examples{
## Create a stopping boundary
##### May take a long time if Nmax is large
B<-MCbound("tsprt",c(alpha0=.001,beta0=.01,Nmax=99,p0=.04,p1=.06))
## do Monte Carlo  test
x<-data.frame(y=1:100,z=rnorm(100),group=c(rep(1,50),rep(2,50)))
stat<-function(x){ cor(x[,1],x[,2]) }
### nonparametric bootstrap test on correlation between y and z
### low p-value means that such a large correlation unlikely due to chance
resamp<-function(x){ n<-dim(x)[[1]] ; x[sample(1:n,replace=TRUE),] }
MCtest(x,stat,resamp,bound=B) 
## Package comes with a large precalculated MC bound as the default
## the precalculated bound is good for testing at the 0.05 level
MCtest(x,stat,resamp)
}
