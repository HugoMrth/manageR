\title{
  Gestion du versionning d'un script
}
\name{save_version}
\alias{save.script.version}
\description{
  Sauvegarde une copie du script actif en lui attribuant unnom permettant une gestion simple du versionning.
}\usage{
  save.script.version(new.versionning = FALSE, date = TRUE,
  version = TRUE, initiales = NULL)
}\arguments{
  \item{new.versionning}{
    Lors de la première création d'un script versionné, il faut renseigner \code{new.versionning = TRUE}.
    Une fois le versionning fait pour la première fois, \code{new.versionning = FALSE}
}
  \item{date}{
    Choix d'inclure ou non la date dans le nom du script. Par défaut \code{date = TRUE}.
}
  \item{version}{
    Choix d'inclure ou non la version installée de R dans le nom du script. Par défaut \code{version = TRUE}.
}
  \item{initiales}{
    Signature de l'auteur de la version à sauvegarder (généralement les intiales).
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
  #La première fois
  save.script.version(new.versionning = TRUE, initiales = "HM")

  #Celles d'après
  save.script.version(initiales = "HM")
}
