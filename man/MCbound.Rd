\name{MCbound}
\alias{MCbound}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create Monte Carlo stopping boundary}
\description{Creates one of several different types of Monte Carlo stopping boundaries
}
\usage{
MCbound(type, parms, conf.level = 0.99)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{type}{a character vector of type of boundary, possible values: "fixed", "tsprt","Bvalue", and "BC"}
  \item{parms}{a numeric vector of parameter values, different for each type (see details)}
  \item{conf.level}{confidence level for intervals about Monte Carlo p-values}
}
\details{
Create Monte Carlo stopping boundaries for use with \code{\link{MCtest}}, where we keep resampling until hitting 
the stopping boundary. There are several possible types, each with a different length parameter vector. 

\tabular{ll}{
type="fixed"  \tab then names(parms)=c("Nmax") \cr
type="tsprt"  \tab then names(parms)=c("p0","p1","A","B","Nmax") \cr
              \tab  or  names(parms)=c("p0","p1","alpha0","beta0","Nmax") \cr
type="Bvalue"  \tab then names(parms)=c("Nmax","alpha","e0","e1") \cr 
type="BC"      \tab then names(parms)=c("Nmax","Smax") \cr
}

The object parms should be a named vector, although unnamed vectors will work if the parameters are in the above order 
(for the tsprt it assumes the first parameterization). For type="fixed" we keep reampling until N=Nmax resamples. 
For type="tsprt" we keep resampling until stopping for a truncated sequential probability ratio test for  a 
binary parmaeter. The parameterizations are the usual Wald notation, except alpha0=alpha and beta0=beta, where 
A=(1-beta0)/alpha0 and B=beta0/(1-alpha0). The Bvalue is a test that p=alpha or not and we stop if the B-value
at information time t, B(t), is B(t)\eqn{<=} qnorm(e0) or B \eqn{>=}qnorm(1-e1). Note that the B-value stopping boundary is 
just a reparameterization of the truncated sequential probability ratio test. For type="BC" we keep resampling 
until N=Nmax or S=Smax following a design recommended by Besag and Clifford (1991). For each stopping boundary 
we calculate valid p-values at each stopping point ordering by S/N. For details see Fay, Kim and Hachey, 2006. 
}
\value{ An object of class MCbound.
A list with the following elements:
  \item{S}{number of sucesses at points on the boundary}
  \item{N}{number of resamples at points on the boundary}
  \item{p.value}{valid p-value at each point on boundary, calculated using ordering by S/N}
  \item{ci.lower}{lower confidence limit of p-value at each boundary point}
  \item{ci.upper}{upper confidence limit of p-value at each boundary point}
  \item{Kstar}{number of ways to reach each point, (S,N), on boundary times beta(S+1,N-S+1) }
  \item{conf.level}{confidence level for intervals on p-values}
  \item{type}{type of boundary: either "fixed", "tsprt", "Bvalue" or "BC"}
  \item{parms}{parameter vector that defines boundary (see details) }  
}
\references{
Besag, J. and Clifford, P. (1991). Sequential Monte Carlo p-values. Biometrika. 78: 301-304.

Fay, M.P., Kim, H-J. and Hachey, M. (2006). Using truncated sequential probability ratio test boundaries 
for Monte Carlo implementation of hypothesis tests. (unpublished manuscript). }
\author{Michael P. Fay}
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
%\seealso{\code{\link{MCtest}}}
\examples{
MCbound("tsprt",c(alpha0=.001,beta0=.01,Nmax=99,p0=.04,p1=.06))
}
\keyword{htest}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
