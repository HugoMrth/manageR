\name{clearEnv}
\alias{clearEnv}
\alias{clearPlots}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Envi cleanup
}
\description{
\code{clearEnv} clears every object in the global environment. Differs from \code{rm(list = ls())} because this does not clean up the loaded packages and functions.
\cr
\code{clearPlots} clears every computed plots. This can be usefull in envs without much memory storing space.
}
\usage{
  clearEnv()
  clearPlots()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  Néant
}
\references{
%% ~put references to the literature/web site here ~
}
\author{

}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
clearEnv()
  clearPlots()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
