\name{ply_complexBase}
\alias{ply_complexBase}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Apply function on a 2D complex base
}
\description{
As title.
}
\usage{
ply_complexBase(re,im,f,loop = T,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{re}{
sequence of real values to loop on.
}
  \item{im}{
sequence of imaginary values to loop on
  }
  \item{f}{
  function to apply
  }
  \item{loop}{
  whether to force looping(if vectorization is disabled in some functions).
  }
}
\author{
Hao Li
}
\note{
%%  ~~further notes~~
}
\seealso{
\code{\link{complex}}
\code{\link{expand.grid}}
}
\examples{
image(ply_complexBase(1:10,1:10,Mod,loop=T))#modular of complex nums
}
\keyword{ ~complex }
\keyword{ ~apply }
\keyword{ ~map }
