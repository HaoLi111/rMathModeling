\name{optim_rand}
\alias{optim_rand}
\title{
Random search optimization
}
\description{
Optimize a given function with random search method with a given search range.
}
\usage{
optim_rand(f,init1,init2 = NULL,
                      n = 100)
}
\arguments{
  \item{f}{
  Function to be optimized
}
  \item{init1}{
1st initial value (lower bound) of the optimization range
}
  \item{init2}{
2nd initial value (lower bound) of the optimization range
}
  \item{n}{
limit of number of random numbers generated
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

}
\keyword{ ~optimization }
\keyword{ ~random }
\keyword{ ~randomsearch}
