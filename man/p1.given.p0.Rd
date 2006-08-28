\name{p1.given.p0}
\alias{p1.given.p0}
\alias{p0.given.p1}
\title{Find p0 (or p1) associated with p1 (or p0) that gives minimax tsprt}
\description{ Consider the SPRT for testing Ho:p=p0 vs H1:p=p1 where  p1\eqn{<} Alpha \eqn{<} p0. 
For Monte Carlo tests, we want to reject and conclude that p\eqn{<}Alpha. In terms of the 
resampling risk at p (i.e., the probability of reaching a wrong decision at p) the minimax 
SPRT has a particular relationship between p0 and p1. Here we calculate p1 given p0 or vise versa 
to obtain that relationship. 
}
\usage{
p1.given.p0(p0, Alpha = 0.05, TOL = 10^-9)
p0.given.p1(p1, Alpha = 0.05, TOL = 10^-9)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p0}{null such that p0\eqn{>}Alpha}
  \item{p1}{alternative such that p1\eqn{<}Alpha}
  \item{Alpha}{want tsprt associated with testing p=Alpha or not}
  \item{TOL}{tolerance level input into call to \code{\link{uniroot}}}
}
%\details{}
\value{
either p0 or p1}
\references{
Fay, M.P., Kim, H-J. and Hachey, M. (2006). Using truncated sequential probability ratio test boundaries 
for Monte Carlo implementation of hypothesis tests. (unpublished manuscript). }
\author{Michael P. Fay}
\examples{
p1.given.p0(.04)
}
\keyword{misc}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
