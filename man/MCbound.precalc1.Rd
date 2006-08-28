\name{MCbound.precalc1}
\alias{MCbound.precalc1}
%\docType{data}
\title{ Precalculated object of class MCbound}
\description{
Because the calculation of this truncated sequential probability ratio test stopping boundary
takes a long time, it is calculated ahead of time and included in the package. 
It is created with the following code, 
\code{MCbound("tsprt",parms=c(p0=.04,p1=p1.given.p0(.04),alpha0=.0001,beta0=0.0001,Nmax=9999),conf.level=.99)}. 
}
\usage{MCbound.precalc1}
\format{
  The format is:
List of 11
 \$ S         : num [1:10000] 22 22 22 22 22 22 22 22 22 22 ...
 \$ N         : num [1:10000] 22 23 24 25 26 27 28 29 30 31 ...
 \$ p.value   : num [1:10000] 1.000 0.957 0.917 0.880 0.846 ...
 \$ ci.lower  : num [1:10000] 0.786 0.719 0.668 0.626 0.590 ...
 \$ ci.upper  : num [1:10000] 1.000 1.000 0.995 0.985 0.972 ...
 \$ Kstar     : num [1:10000] 0.0435 0.0399 0.0367 0.0338 0.0313 ...
 \$ conf.level: num 0.99
 \$ name      : chr "B-value design"
 \$ type      : chr "tsprt"
 \$ parms     : Named num [1:5] 4.00e-02 6.14e-02 1.00e-04 1.00e-04 1.00e+04
  ..- attr(*, "names")= chr [1:5] "p0" "p1" "alpha0" "beta0" ...
 \$ check     : num 1
 - attr(*, "class")= chr "MCbound"
}
%\details{
%  ~~ If necessary, more details than the __description__ above ~~
%}
%\source{
%  ~~ reference to a publication or URL from which the data were obtained ~~
%}
%\references{
%  ~~ possibly secondary sources and usages ~~
%}
\examples{
plot(MCbound.precalc1) 
}
\keyword{sysdata}
