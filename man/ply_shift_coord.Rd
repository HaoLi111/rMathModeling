\name{ply_shift_coord}
\alias{ply_shift_coord}
\title{
Apply optimization function by coordinate shifting
}
\description{
By repeating the process of optimization on each coordinate, find the minimum of a multi-variable function.
}
\usage{
ply_shift_coord(fListPly,iter = list(x = c(1,3),
                                         y = c(0,2),
                                         z = c(-1,4)),
                           init = list(x=1,y=1.5,z = 1),
                           optimFunc = optim_midp,nply_iter = 5,...)
}
\arguments{
  \item{fListPly}{
A function taking in a list of corresponding variable
}
\item{iter}{
Iteration parameters for the optimFunc
}
\item{init}{
Initial value to take in
}
\item{optimFunc}{
Method to optimize a 1 var func.
}
}
\details{
May converge quickly if the function does not have more than 1 local variables.
}
\references{
Matlab Youhuasuanfa
}
\author{
Hao Li
}
\seealso{
\code{\link{help}}, ~~~
}
\examples{
ply_shift_coord((function(l) l$x^2+l$y^2-3*l$z^2),iter = list(x = c(1,3),
y = c(0,2),
z = c(-1,4)),
init =  list(x=1,y=1.5,z = 1))
}
\keyword{ ~optimize }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~multivariable }% __ONLY ONE__ keyword per line
