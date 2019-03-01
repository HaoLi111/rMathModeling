\name{optim_midp}
\alias{optim_midp}
\title{
Optimization by taking midpoints
}
\description{
From initial values, find the minimum by iterating the process oftaking midpoints and comparing.
}
\usage{
optim_midp(f,init1,init2,n = 100)
}
\arguments{
  \item{f}{
Function to take min
}
  \item{init1}{
1st initial value
}
  \item{init2}{
2nd initial value
}
}
\details{
init2 must be greater than init1
}
\references{
Matlab Youhuasuanfa
}
\author{
Hao Li
}
\seealso{
\code{\link{optim}}
}
\examples{
optim_midp((function(x) x^2),init1 = -.1,init2 = 11)
}
\keyword{ ~optim }
\keyword{ ~midpoint }
