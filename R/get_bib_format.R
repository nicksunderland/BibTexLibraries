#' @title Path to .csl file
#' @param name the .csl file name; if null returns a list of options
#' @return an absolute path to the .bib file
#' @export
#'
get_bib_format <- function(name=NULL) {

  cfig_path <- system.file("config.yml", package="BibTexLibraries")
  config <- yaml::read_yaml(cfig_path)
  dir <- file.path(config[['base_dir']], "csl_formats")

  # try elsewhere
  if(is.null(dir) || !dir.exists(dir)) {
    dir <- system.file("extdata", "csl_formats", package="BibTexLibraries")
  }

  if(is.null(name)) {
    message("Csl (`name`) options: \n\t", paste0(list.files(dir, full.names=FALSE), collapse="\n\t"))
    return(NULL)
  }

  path <- file.path(dir, paste0(sub(".csl$","",name), ".csl"))

  if(!file.exists(path)) {

    stop(".csl file not found")

  } else {

    return( path )

  }

}
