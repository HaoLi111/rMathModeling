\name{dynam_condStep}
\alias{dynam_condStep}
\title{
Update dynamic model
}
\description{
dynam_condStep - only counting the step that the certain conditional function shows false.
dynam_escapeStep - only counting the step that the iterated variable escape certain jmodular range.
}
\usage{
dynam_condStep(m,condf,itfunc,takein=NULL,n=100)
dynam_escapeStep(m,modlim=2,itfunc=dynam_update_Julia,takein=0,n=100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
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
function (x)
{
  }
}
\keyword{ ~dynam_escapeStep }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~ifs }
\keyword{ ~fractal }
