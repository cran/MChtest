\name{mult}
\alias{mult}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculation to Convert Stored cb values to K values.}
\description{ Calculates \eqn{ \frac{(p^r)* ( (1-p)^(n-r) )}{ \beta(r,n-r)}}. This calculation is used to convert stored cb 
values to K values in MCdesign objects.
For internal use only. 
}
\usage{
mult(n, r, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ numeric }
  \item{r}{ numeric }
  \item{p}{ numeric }
}
%\details{ ~~ If necessary, more details than the description above ~~}
\value{ numeric value equal to 
\eqn{\frac{(p^r)* ( (1-p)^(n-r) )}{ \beta(r,n-r)}}. 
 }
%\references{ ~put references to the literature/web site here ~ }
\author{M.P. Fay}
\keyword{internal}