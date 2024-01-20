\title{
  Chargement de packages
}\name{load_libraries}\alias{load_libraries}\description{
  Charge une sélection de packages courants par thèmes.
}\usage{
  load_libraries(purpose = c("data_tidying", "data_science", "excel", "shiny", "plots", "knit"))
}\arguments{
  \item{purpose}{
    Ensemble des thématiques des packages. \code{data_tidying} pour le formatage des données,
    \code{data_science} pour les méthodes statistiques,
    \code{excel} pour le gestion des fichiers Excel,
    \code{shiny} pour les applications Shiny,
    \code{plots} pour la modélisation,
    \code{knit} pour Rmarkdown et autres compilation de code.
}
}\value{
  Néant
}\author{
  Hugo Marthinet
}\examples{
  # Pour tout charger
  load_libraries()

  #Si on est uniquement dans un cadre de datasciences
  load_libraries(purpose = c("data_tidying", "data_sciences"))
}
