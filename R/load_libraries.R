load_libraries <- function(purpose = c("data_tidying", "data_sciences", "excel", "shiny", "plots", "knit")) {
  purpose <- match.arg(purpose, c("data_tidying", "data_sciences", "shiny", "plots", "knit"), several.ok = TRUE)

  if ("data_tidying" %in% purpose) {
    library(dplyr)
    library(tidyr)
    library(stringr)
    library(stringi)
    library(plyr)
    library(lubridate)
    library(gridExtra)
    library(reshape2)
    library(grid)
    library(splitstackshape)
    library(tableone)
    library(pander)
    library(purrr)
  }

  if ("data_science" %in% purpose) {
    library(rgl)
    library(questionr)
    library(cowplot)
    library(splitstackshape)
    library(lcmm)
    library(forecast)
    library(xts)
    library(readr)
    library(janitor)
    library(forecast)
    library(fpp2)
    library(TSA)
    library(DT)
    library(survminer)
    library(FactoMineR)
    library(survival)
    library(survey)
    library(agricolae)
    library(funModeling)
    library(remotes)
    library(MASS)
    library(foreign)
    library(car)
    library(olsrr)
    library(fossil)
    library(finalfit)
    library(lme4)

  }

  if ("excel" %in% purpose) {
    library(readxl)
    library(xlsx)
    library(xlsxjars)
    library(openxlsx)
    library(writexl)
    library(readr)
  }

  if ("shiny" %in% purpose) {
    library(shiny)
    library(shinyalert)
    library(shinythemes)
    library(shinyWidgets)
    library(shinydashboard)
    library(shinyalert)
    library(shinycssloaders)
    library(shinyjs)
  }

  if ("plots" %in% purpose) {
    library(plotly)
    library(ggplot2)
    library(ggmap)
    library(gplots)
    library(raster)
    library(sjPlot)
  }

  if ("knit" %in% purpose) {
    library(knitr)
    library(flexdashboard)
    library(flextable)
    library(kableExtra)
    library(markdown)
  }
}
