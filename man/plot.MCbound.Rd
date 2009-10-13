\name{plot.MCbound}
\alias{plot.MCbound}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot stopping boundary}
\description{
Creates two plots of an object of class \code{\link{MCbound}}, an stopping boundary for use with Monte Carlo hypothesis tests. 
First, it plots the stopping boundary as number of replications (i.e., N)
vs. number of sucesses (S). Second, it plots the estimated p-values
vs. the confidence limits minus the estimated p-values (this nicely shows the width of the confidence intervals). }
\usage{
\method{plot}{MCbound}(x, rdigit=4, plimit=500,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object of class MCbound}
  \item{rdigit}{the rounding digit for the parms values in the title}
  \item{plimit}{if the number of points in the MCbound is >plimit then plot lines, otherwise plot points}
  \item{...}{additional arguments to both plot functions}
}
%\details{
%  ~~ If necessary, more details than the description above ~~
%}
\value{ Does not return any values. Does two plots only.
}
%\references{ ~put references to the literature/web site here ~ }
\author{ M.P. Fay }
\seealso{ \code{\link{MCbound}} }
\examples{
plot(MCbound.precalc1)
}
\keyword{hplot}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
