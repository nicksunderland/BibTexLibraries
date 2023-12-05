#' @title Path to .bib file
#' @param name the .bib file name
#' @return an absolute path to the .bib file
#' @export
#'
get_bib_path <- function(name) {

  path <- system.file("extdata", paste0(sub(".bib$","",name), ".bib"), package="BibTexLibraries")

  if(!file.exists(path)) {

    stop(".bib file not found")

  } else {

    return( path )

  }

}
