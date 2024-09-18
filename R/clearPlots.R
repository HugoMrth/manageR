clearPlots <- function() {
  if (!is.null(dev.list()["RStudioGD"])) dev.off(dev.list()["RStudioGD"])
}
