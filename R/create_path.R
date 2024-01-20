create_path <- function(file_name, auto_full_path = TRUE, previous_file = FALSE,
                        time_stamp = TRUE, hour = FALSE,
                        extension = NULL, path = "") {
  p <- file_name
  if (time_stamp & hour) {
    p <- paste0(stringr::str_replace_all(ymd(Sys.Date()), "-", ""), "_", hour(Sys.time()), minute(Sys.time()), "_", p)
  }
  if (time_stamp & !hour) {
    p <- paste0(str_replace_all(ymd(Sys.Date()), "-", ""), "_", p)
  }
  if (is.defined(extension)) {
    p <- paste0(p, extension)
  } else {
    p <- paste0(p, ".xlsx")
  }
  if (auto_full_path) {
    if (previous_file) {
      return(paste0(get_script_dp(), "/", p))
    } else {
      return(paste0(get_script_file_dp(), "/", p))
    }
  } else {
    return(paste0(path, "/", p))
  }
}
