reset_env <- function() {
  rm(list = setdiff(ls(.GlobalEnv), lsf.str(.GlobalEnv)), envir = .GlobalEnv)
}
