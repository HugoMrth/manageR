##############################################################################

####           FONCTION D'INSTALLATION DE PACKAGE SOUS INTRADFE           ####

###############################################################################

# Executer tous le code ci-dessous et utiliser la fonction de la meme facon que
# La fonction install.package() classique


# Exemple d'utilisation :
# install.packages.cespa(c("GGally", "tidyverse", "lmerTest"))
# install.packages.cespa("dplyr")

# Pour mettre a jour un package (en cas de mise a jour de la version)
# Specifier 'update = TRUE'

# Exemple :
# install.packages.cespa("manageR", update = TRUE)



install.packages.cespa <-
  function(pkg,
           update = FALSE,
           installingDeps = TRUE) {
    # pkg <- "incidence"
    # update <- FALSE
    # installingDeps <- TRUE


    if (is.null(pkg)) {
      stop("pkg manquant")

    }

    #### Check Params ####

    already.installed <- pkg[pkg %in% installed.packages()[, 1]]
    not.installed <- pkg[!pkg %in% already.installed]

    if (!update)
      for (i in already.installed)
        message(paste(i, "deja installe, aucune action effectuee"))

    if (update) to.retrieve <- pkg
    if (!update) to.retrieve <- not.installed

    message(paste0("Package a installer : ", to.retrieve, "\n"))


    # Recuperation de la versionde R installÃ©e

    if (R.version[["major"]] == 3)
      cespaPath <-
      normalizePath(
        "\\\\inf42msh---wi01/MRS_MSH_CESPA/Commun_CESPA/Packages_R/bin/windows/contrib/3.6"
      )
    if (R.version[["major"]] == 4)
      cespaPath <-
      normalizePath(
        "\\\\inf42msh---wi01/MRS_MSH_CESPA/Commun_CESPA/Packages_R/bin/windows/contrib/4.0"
      )

    packageFiles <- dir(cespaPath)

    #Recuperation de la liste de packages a installer
    index.to.install <-
      grep(paste0("^(", paste0(to.retrieve, collapse = "|"), ")_[0-9]"),

           x = packageFiles)

    packageNames <- sapply(strsplit(packageFiles, "_"), `[`, 1)
    nofile <- to.retrieve[which(!to.retrieve %in% packageNames)]
    hasfile <- to.retrieve[which(to.retrieve %in% packageNames)]

    for (i in nofile)
      message(paste0("package ", i, " : pas de fichier correspondant"))

    if (length(index.to.install) == 0)
      return(invisible())

    if (length(index.to.install) > 0)
      to.install <-
      paste(cespaPath, packageFiles[index.to.install], sep = "\\")

    options(install.packages.check.source = "no")

    if (length(index.to.install) > 0)
      install.packages(
        to.install,
        repos = NULL,
        dependencies = FALSE,
        type = "win.binary"
      )

    #### DEPENDANCES ####
    if (installingDeps) {
      getDependencies <-
        function(pkgs,
                 dependencies = c("Depends", "Imports", "LinkingTo")) {
          deps <- character()

          for (i in unique(pkgs)) {
            for (j in dependencies) {
              if (length(!is.na(packageDescription(i)[[j]]))) {
                iterate <-
                  sub(
                    x = strsplit(packageDescription(i)[[j]], ", |,\n")[[1]],
                    pattern = "(\\w+)([\n| ])(\\([><=]+[0-9.><=, \n\\-]+\\))",
                    replacement = "\\1"
                  )
                deps <- unique(c(deps, iterate))
              }
            }
          }
          return(deps[!deps %in% c("R", "", "tools", "Rtools")])
        }

      dependencies <- getDependencies(hasfile)

      if (update) {
        missing_deps <- dependencies
      } else {
        missing_deps <-
          dependencies[dependencies %in% installed.packages()[, 1] == FALSE]
      }

      if (length(missing_deps[missing_deps != ""]) > 0)
        install.packages.cespa(missing_deps[missing_deps != ""],
                               update = update,
                               installingDeps = FALSE)
    }
  }
