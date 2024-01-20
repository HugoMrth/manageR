\name{create_path}
\alias{create_path}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Creation rapide d'un chemin
}
\description{
  Cree un chemin pour un enregistrement rapide de fichier. \cr
  Concatene du fichier dans lequel se trouve le script actif et le nom de fichier en entrée. \cr
  L'extension par defaut est .xlsx.
}
\usage{
  create_path(file_name, auto_full_path = TRUE, previous_file = FALSE,
              time_stamp = TRUE, hour = FALSE,
              extension = NULL, path = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file_name}{
    Nom du fichier
}
  \item{auto_full_path}{
    Par defaut TRUE, concatene le chemin vers le dossier ou se trouve le script actif.
    Sinon, concatene l'argument \code{path} (vide par défaut).
}
  \item{previous_file}{
    Par defaut FALSE, remonte d'un cran dans l'arborescence du chemin. Inutile si \code{auto_full_path = FALSE}.
}
  \item{time_stamp}{
    Par defaut TRUE, ajout de la date en format YYYY/MM/DD en début de nom de fichier.
}
  \item{hour}{
    Par defaut FALSE, ajoute aussi l'heure. Inutile si \code{time_stamp = FALSE}.
}
  \item{extension}{
    Par defaut .xlsx. Renseigner l'extension voulue avec le .
}
  \item{path}{
    Si \code{auto_full_path = FALSE}, est evalue et concatene la chaine de caractere renseigné avant le nom du fichier.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    Retourne le chemin sous forme de chaîne de caractères.
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
## Simplement avec le nom du fichier, pratique pour enregistrer un tableau Excel
create_path("fichier")

## Autres utilisations plus personnalisées
create_path("fichier", previous_file = TRUE)
create_path("fichier", extension = ".csv")
create_path("fichier", hour = TRUE, auto_full_path = FALSE,
            path = "Un_autre_chemin")
}
