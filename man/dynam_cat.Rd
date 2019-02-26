\name{dynam_cat}
\name{dynam_cat}
\alias{dynam_cat}
\title{
(testing)Simulate and write final result to file a dynamic system(Euler's Method)
}
\description{
With a interation formula, update the status state in a memory-saving way, and record the results.
}
\usage{
dynam_record(init,index,
                        Fupdate,
                        record_per=1,
                        file = tempFile(),
                        type = '.csv')
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{init}{
Initial state of a system
}
\item{index}{
Index (range) to interate within
}
\item{Fupdate}{
Function to update current status flow (with no extra parameters).
}
\item{record_per}{
Linspace division for record.
}
}
\details{
Only rbind availiable
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
\code{\link{dynam_cat}}
}
\examples{
}
\keyword{ ~dynamic }
\keyword{ ~simulation }
