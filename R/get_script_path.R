get_script_path <- function() {
  return(rstudioapi::getSourceEditorContext()$path)
}
