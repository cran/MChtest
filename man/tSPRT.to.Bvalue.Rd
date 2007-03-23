\name{tSPRT.to.Bvalue}
\alias{tSPRT.to.Bvalue}
\alias{Bvalue.to.tSPRT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert between MCbound parameterizations}
\description{
Convert from the tSPRT to the Bvalue parametrization or vice versa. 
}
\usage{
tSPRT.to.Bvalue(parms)
Bvalue.to.tSPRT(parms,p0,TOL=10^-8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{parms}{ named vector of parameters }
  \item{p0}{ To pick a unique parameterization of the type tSPRT, you must specify p0}
  \item{TOL}{tolerance for solution of \code{\link{p1.given.p0}} }
}
%\details{  ~~ If necessary, more details than the description above ~~}
\value{
Parameter vector of other parameterization. 
}
%\references{ ~put references to the literature/web site here ~ }
\author{Michael P. Fay}
\note{ \code{tsprt.to.Bvalue} called by \code{\link{MCbound}} when type="tsprt". 
}
\seealso{\code{\link{MCbound}}}
\examples{
temp<-tSPRT.to.Bvalue(c(p0=.04,p1=p1.given.p0(.04),alpha0=.001,beta0=.001,Nmax=9999))
temp
Bvalue.to.tSPRT(temp,p0=.04)
}
\keyword{misc}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
