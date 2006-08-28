\name{rrisk}
\alias{rrisk}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate resampling risk and expected resampling size}
\description{
Calculates for a particular stopping boundary the resampling risk of making the wrong 
accept/reject decision. Can be calculated for different distributions of the p-value.
If type="p" then assume point mass at pparms. If type="b" then assume a beta distribution
with two shape parameters given by pparms.
}
\usage{
rrisk(bound, pparms, sig.level = 0.05, type = "b")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{bound}{an object of class MCbound, i.e., a stopping boundary. See \code{\link{MCbound}} to create}
  \item{pparms}{either a vector of possible point mass p-value distributions (type="p"), or a vector (or matrix with two columns) representing two beta shape parameters (type="b")}
  \item{sig.level}{significance level for defining resampling risk}
  \item{type}{either "p" for point mass p-value distributions, or "b" for a beta distribution}
}
\details{
The resampling risk (RR) is defined as the probability of making an accept/reject decision different from complete enumeration.
In other words, for any Monte Carlo test the true p-value for any data is either below the sig.level (reject the null) or above
the sig.level (accept the null), and the RR is the probability of either deciding p<=sig.level when p>sig.level or vise versa.
We also calculate the expected resampling size for the assumed distributions on the p-values. As a check of the MCbound, we sum 
the probability of stopping at any point in the boundary over the entire stopping boundary for each assumed distribution on the 
p-values; the ouput value check should give a vector of all ones if the MCbound is calculated correctly. 
}
\value{
A list with the following elements:
  \item{check}{Sum of the probabilities of the stopping boundary corresponding to the p-value distribution(s). Should be a vector with all values equal to 1.}
  \item{rr}{resampling risk corresponding to the p-value distribution(s)}
  \item{EN}{expected resampling size corresponding to the p-value distribution(s)}
}
\references{
Fay, M.P., Kim, H-J. and Hachey, M. (2006). Using truncated sequential probability ratio test boundaries 
for Monte Carlo implementation of hypothesis tests. (unpublished manuscript). }
\author{Michael P. Fay}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
### caculate resampling risk and E(N) under null, i.e., uniform distribution on p-values 
rrisk(MCbound.precalc1,c(1,1))
}
\keyword{misc}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
