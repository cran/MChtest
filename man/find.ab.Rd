\name{find.ab}
\alias{find.ab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Find beta parameters to approximate distribution of p-values.}
\description{Find parameters of a beta distribution to approximate distribution of a p-value derived from a 
normal test statistic with one-sided significance level=ALPHA and power=1-BETA.
}
\usage{
find.ab(n = 1e+05, ALPHA = 0.05, BETA = 0.2, higha = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{the number of divisions for the numeric integration used to estimate the mean of p-value distribution, H (see details). }
  \item{ALPHA}{ one-sided significance level of normal test statistic }
  \item{BETA}{ type II error for normal test stastic }
  \item{higha}{an upper bound on the beta parameter (see details).}
}
\details{
The cumulative distribution function of the p-value from a normally distributed test statistic with one-sided significance level=ALPHA 
and power=1-BETA is H(p) = 1-pnorm( qnorm(1-p) - qnorm(1-ALPHA)+qnorm(BETA) ).
We approximate this distribution with a beta distribution, B, which has the same mean as H and has B(ALPHA)=1-BETA.
If two beta distributions meet both those criteria, we select the one closest to H in terms of integrated square error
of the cumulative distribution function. That error is estimated by the sample variance of the differences in the two CDFs
evaluated at (0:n)/n. Note that the two beta distributions come from the two roots of the following function: 
    1-BETA - B(ALPHA)
We search for those two roots as the beta parameter within the range (1/higha, higha).
}
\value{
A list with two elements:
  \item{a}{numeric value of one of the shape parameters of the beta distribution }
  \item{b}{numeric value of the other shape parameter of the beta distribution }
}
\references{ Fay, M.P., and Follmann, D.A. (2002). "Designing Monte Carlo implementations of 
permutation or bootstrap hypothesis tests" American Statistician, 56: 63-70.}
\author{M.P. Fay}
%\note{}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
## See first line of Table 1, Fay and Follmann, 2002 
find.ab(ALPHA=.05,BETA=.1)
}
\keyword{misc}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
