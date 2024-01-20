save.script.version <- function(new.versionning = FALSE,
                                date = TRUE, version = TRUE, initiales = NULL) {

  #### Check Params ####




  #### Code Fonction ####

  # Recup datapath initial
  p <- rstudioapi::getSourceEditorContext()$path
  vec_slash <- gregexpr("/", p)[[1]]

  if (new.versionning) {
    # Recup de la racine du chemin
    new_p <- substr(p, 1, vec_slash[length(vec_slash)])

    # Ajout de la date
    if (date) {
      new_p <- paste0(new_p, str_replace_all(as.Date(now()), "-", ""), "_")
    }

    # Ajout de la version de R installée
    if (version) {
      new_p <- paste0(new_p, "R", base::version$major, str_replace_all(base::version$minor, "\\.", ""), "_")
    }
    new_p <- paste0(new_p, substr(p, vec_slash[length(vec_slash)]+1, nchar(p)-2))

    # Ajout des initiales de l'auteur
    if (is.defined(initiales)) {
      new_p <- paste0(new_p, "_", initiales)
    }
    new_p <- paste0(new_p, ".R")
  } else {
    old_p <- substr(p, vec_slash[length(vec_slash)]+1, nchar(p)-2)
    vec_underscore <- gregexpr("_", old_p)[[1]]

    if (date) {
      new_p <- str_replace(p, substr(old_p, 1, vec_underscore[1]-1), str_replace_all(as.Date(now()), "-", ""))
    }
    if (version) {
      new_p <- str_replace(new_p,
                           substr(old_p, vec_underscore[1]+1, vec_underscore[2]-1),
                           paste0("R", base::version$major, str_replace_all(base::version$minor, "\\.", "")))
    }
    if (is.defined(initiales)) {
      new_p <- str_replace(new_p,
                           substr(new_p, gregexpr("_", new_p)[[1]][length(gregexpr("_", new_p)[[1]])]+1, nchar(new_p)),
                           paste0(initiales, ".R"))
    }
  }


  file.copy(p, new_p)
}

#save.script.version(new.versionning= TRUE, initiales = "HM")
