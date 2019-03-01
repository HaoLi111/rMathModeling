\name{optim_rand}
\alias{optim_rand}
\title{
Random search optimization
}
\description{
Optimize a given function with random search method with a given search range.
}
\usage{
optim_rand(x, f, lim, n = 100)
}
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{f}{
%%     ~~Describe \code{f} here~~
}
  \item{lim}{
%%     ~~Describe \code{lim} here~~
}
  \item{n}{
%%     ~~Describe \code{n} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, f, lim, n = 100)
{
    base = runif(n, min = lim[1], max = lim[2])
    re = ifelse(isTRUE(x(base)), f(base), NA)
    list(opt = min(re, na.rm = T), dep = base[which.min(re)])
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
