get_function <- function(func) {
  res <- list()
  res$code_source <- getAnywhere(func)$objs[[2]]


  pkg <- getAnywhere(func)$where[1]
  pkg <- substr(pkg, regexec(":", pkg)[[1]] + 1, nchar(pkg))

  Rd <- tools::Rd_db(pkg)
  Rd <- Rd[[which(names(Rd) %in% paste0(func, ".Rd"))]]
  res$Rd <- Rd

  return(res)
}


# get_function("arrondi")
