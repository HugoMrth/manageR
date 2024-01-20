get_script_file_path <- function() {
  dp <- rstudioapi::getSourceEditorContext()$path
  vec_slash <- gregexpr("/", dp)[[1]]
  return(substring(dp, 1, vec_slash[length(vec_slash)] - 1))
}
