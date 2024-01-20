\title{
  Code source et fichier dedocumentaion d'une fonction
}
\name{get_function}
\alias{get_function.na}
\description{
  Retourne une liste contenant le code source (\code{code_source}) de la fonction en argument et le texte du fichier
  de documentation de cette fonction  (\code{Rd}) .
}\usage{
  get_function(func, pkg = NULL)
}\arguments{
  \item{func}{
    Nom de la fonction sous forme de chaîne de caractères.
}
}\value{
  Une liste de code source.
}\author{
  Hugo Marthinet
}\examples{
  get_function("get_function")
}
