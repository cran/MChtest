\name{find.cb}
\alias{find.cb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Finds cb=Kstar for B-value stopping rule }
\description{
Kstar=cb is the number of ways to get to each point in the stopping boundary times 
times beta(S+1,N-S+1). Called by \code{\link{MCbound.tsprt}} or \code{\link{MCbound.Bvalue}}}
\usage{
find.cb(theta)
}
\arguments{
  \item{theta}{a matrix of 2 columns, first column is S second is N}
}
\value{
A list with components
  \item{w}{S}
  \item{m}{N}
  \item{cb}{Kstar}
  \item{done}{logical}
}
\author{Michael Fay}
\keyword{internal}% at least one, from doc/KEYWORDS
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
