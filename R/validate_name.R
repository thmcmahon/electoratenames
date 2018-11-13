#' validate_name
#'
#' Check whether the supplied name is a valid name for a Commonwealth Electoral
#' Division at the 2018 Federal Election.
#'
#' @param name The name of an electorate for the 2018 election.
#'
#' @return Binary indicating whether the name is valid.
#' @export
#'
#' @examples
#' validate_name('Bean')
validate_name <- function(name) {
  if (name %in% electorate_names$electorate){
    return(TRUE)
  }
  FALSE
}
