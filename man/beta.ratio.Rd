\name{beta.ratio}
\alias{beta.ratio}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculation Ratio of two Beta functions}
\description{
beta.ratio(a,b,x,y) = beta(a,b)/beta(x,y), where beta(a,b)=(gamma(a)*gamma(b))/gamma(a+b)
}
\usage{
beta.ratio(a, b, x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{ a numeric object}
  \item{b}{ a numeric object }
  \item{x}{ a numeric object }
  \item{y}{ a numeric object}
}
\details{
The function was created to avoid underflow problems when both beta(a,b) and beta(x,y) are very small.
Recall for integers i and j, beta(i+1,j+1) = \eqn{ \frac{(i!j!)}{(i+j+1)!}}
}
\value{
a numeric value representing the ratio of two beta functions}
%\references{ ~put references to the literature/web site here ~ }
\author{Michael P. Fay}
%\note{ }
\seealso{ \code{\link{beta}} }
\examples{
### The following equals 1001/1000=1.001
beta.ratio(999,1001,1000,1000)
### does not get the answer exactly correct
## but it is better than
## the following 
beta(999,1001)/beta(1000,1000)
}
\keyword{internal}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
