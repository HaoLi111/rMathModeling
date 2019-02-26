\name{dynam_record}
\alias{dynam_record}
\title{
Simulate and record a dynamic system(Euler's Method)
}
\description{
With a interation formula, update the status state in a memory-saving way, and record the results.
}
\usage{
dynam_record(init,index,
                        Fupdate,.combine = 'rbind',
                        record_per=1)
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
\item{.combine}{
Method to combine results. Must be character input,
choose between 'rbind', 'cbind' and'list'.
}
\item{record_per}{
Linspace division for record.
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
\code{\link{dynam_cat}}
}
\examples{
#2D Brownian Motion

dynam_runif=dynam_record(init = c(1,1),index=1:100,Fupdate=(function(x) x+rnorm(2, mean=0, sd=1)))
plot(dynam_runif[,2],dynam_runif[,3],type='l',xlab='x',ylab='y')
}
\keyword{ ~dynamic }
\keyword{ ~simulation }
