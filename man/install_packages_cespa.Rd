\title{
  Fonction install.packages() parametree pour le CESPA
}
\name{install_packages_cespa}
\alias{install.packages.cespa}
\description{
  Installe les packages voulus depuis le reseau du CESPA. Prend en compte les dependances et la version de R installee.
}
\usage{
  install.packages.cespa(pkg,
                         update = FALSE,
                         installingDeps = TRUE)
}
\arguments{
  \item{pkg}{
    Le nom du package sous forme de chaîne de caracteres ou de vecteur.
  }
    \item{update}{
    Choix de mettre a jour ou non les packages deja installes.
  }
    \item{installingDeps}{
    Choix d'installer ou non les dependances. Les dependances ne sont gerees qu'a un niveau pour eviter les chargements trop longs :
    les dependances de dependances ne seront pas installees.
  }
}
\details{

}
\author{
  Olivier Gaget & Hugo Marthinet
}
\examples{
  install.packages.cespa(c("GGally", "tidyverse", "lmer"))
  install.packages.cespa("dplyr", update = TRUE)
}
