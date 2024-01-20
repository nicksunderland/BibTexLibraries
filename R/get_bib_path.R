#' @title Path to .bib file
#' @param name the .bib file name; if null returns a list of options
#' @return an absolute path to the .bib file
#' @export
#'
get_bib_path <- function(name=NULL) {

  dir <- system.file("extdata", package="BibTexLibraries")

  if(is.null(name)) {
    files <- list.files(dir, full.names=FALSE)
    message("Bib (`name`) options: \n\t", paste0(files[grepl(".bib$", files)], collapse="\n\t"))
    return(NULL)
  }

  path <- file.path(dir, paste0(sub(".bib$","",name), ".bib"))

  if(!file.exists(path)) {

    stop(".bib file not found")

  } else {

    return( path )

  }

}
