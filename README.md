<p align="center">
<img src="inst/logo.png" height="200"/> 
</p>

## File and script managment tools
  
  
***

 ### 1) Install

```
#Install from CRAN 
#Not currently on CRAN

  
#Install the development version from GitHub  
install.packages("devtools")

#Install package from github
devtools::install_github("HugoMrth/manageR", build_vignettes = TRUE)
#Or download the zip file
devtools::install(build_vignettes = TRUE)

#R may recquire a session restart in order to properly run the App : Ctrl + Shift + F10
```

### 2) Purpose

This packages is heavily based on the base and studioapi function of R. The aim to to transform some obscur and very low level functions into tools at a higher level and easier to handle.
However, this does not provide any new fonctionnality compared to what is possible with the base version of R.




