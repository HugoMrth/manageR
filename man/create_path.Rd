\name{create_path}
\alias{create_path}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fast path creation
}
\description{
Fast path creation for file saving.
Paste the current R script path and the argument string. Automatically add an extension.
}
\usage{
  create_path(file_name, auto_full_path = TRUE, previous_file = FALSE,
              time_stamp = TRUE, hour = FALSE,
              extension = NULL, path = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file_name}{
File name.
}
  \item{auto_full_path}{
If \code{auto_full_path = TRUE} (default), paste the full script path to the file name.
Otherwise, user has to type de full path manually.
}
  \item{previous_file}{
If \code{previous_file = TRUE} (default is \code{FALSE}), generated path last level get deleted. Ignored if \code{auto_full_path = FALSE}.
}
  \item{time_stamp}{
Add a YYYY/MM/DD datestamp to the file name, default is \code{time_stamp = TRUE}
}
  \item{hour}{
Also add a timestamp to the file name. Ignored if \code{time_stamp = FALSE}
}
  \item{extension}{
File extension, default is \code{extension = ".xlsx"}. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
  Hugo Marthinet
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## Fully automatic
create_path("fichier")

## Personnalized uses
create_path("fichier", previous_file = TRUE)
create_path("fichier", extension = ".csv")
create_path("fichier", hour = TRUE, auto_full_path = FALSE,
            path = "another_path")
}
