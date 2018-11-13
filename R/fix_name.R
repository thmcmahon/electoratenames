#' fix_name
#'
#' Fix an incorrectly title, spelled or misnamed electorate name.
#'
#' @param name
#'
#' @return name Character. Correctly spelled electorate name.
#' @export
#'
#' @examples
#' fix_name('Occonor')
fix_name <- function(name) {
  name_title_case <- stringr::str_to_title(name)
  if (validate_name(name) == TRUE) {
    return(name)
  } else if (validate_name(name_title_case) == TRUE) {
    return(name_title_case)
  } else if (name_title_case %in% common_name_problems$wrong_name) {
    return(common_name_problems$right_name[
      common_name_problems$wrong_name==name_title_case][1])
  } else {
    stop(glue::glue('name is not a recognised electorate name ',
                    'or a common misspelling of an electorate name.'))
  }
}
