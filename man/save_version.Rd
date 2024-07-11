\title{
  Script versionning
}
\name{save_version}
\alias{save.script.version}
\description{
  Saves a timestamped copy of the active R script.
}\usage{
  save.script.version(new.versionning = FALSE, date = TRUE,
  version = TRUE, signature = NULL)
}\arguments{
  \item{new.versionning}{
First save recquires \code{new.versionning = TRUE)}. Not needed afterwards.
}
  \item{date}{
Wether or not to include the date in the file name. Default is \code{date = TRUE}.
}
  \item{version}{
Wether or not to include the current R version in the file name. Default is \code{date = TRUE}.
}
  \item{signature}{
Author initials to add to the file name.
}
}
\details{
  La date est renseignée par jour, et si deux sauvegardes de versions sont faites le même jour par la même personne (même signature), la fonction à le même effet qu'une sauvegarde de script classique.
}
\value{
  Néant (crée un nouveau fichier)
}\author{
  Hugo Marthinet
}\examples{
  #First save
  save.script.version(new.versionning = TRUE, signature = "HM")

  #After the first save
  save.script.version(initiales = "HM")
}
