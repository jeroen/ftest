#' Echo Fortran
#'
#' Calls the fortran hello world program
#'
#' @export
#' @examples hello()
hello <- function() {
  bindir <- system.file("bin", package = "ftest")
  postfix <- if(is_windows()) .Machine$sizeof.pointer * 8
  path <- file.path(bindir, paste0("hello", postfix))
  system2(path, stdout = TRUE)
}

is_windows <- function(){
  identical(.Platform$OS.type, "windows")
}
