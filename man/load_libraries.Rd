\title{
   Packages loading
}\name{load_libraries}
\alias{load_libraries}
\description{
Packages loading per branch of datascience. Those include some commonly used packages in each branch.
}\usage{
  load_libraries(purpose = c("data_tidying", "data_science", "excel", "shiny", "plots", "knit"))
}\arguments{
  \item{purpose}{
    Set of branches to choose from. \code{data_tidying} to handle data,
    \code{data_science} to conduct statistical analysis,
    \code{excel} to handle excel files,
    \code{shiny} to create Shiny Apps,
    \code{plots} to visualize data,
    \code{knit} to report the results.
}
}\value{
}\author{
  Hugo Marthinet
}\examples{
  # Default is everything
  load_libraries()

  # Or a combinaison of chocies
  load_libraries(purpose = c("data_tidying", "data_sciences"))
}
