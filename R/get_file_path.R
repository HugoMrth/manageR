get_file_path <- function() {
  dp <- rstudioapi::getSourceEditorContext()$path
  vec_slash <- gregexpr("/", dp)[[1]]
  dp2 <- substring(dp, 1, vec_slash[length(vec_slash)] - 1)
  vec_slash2 <- gregexpr("/", dp2)[[1]]
  return(substring(dp2, 1, vec_slash2[length(vec_slash2)] - 1))
}
