#' Convert meters to miles
#'
#' @param x a numeric value
#'
#' @return a numeric value
#' @export
#'
#' @examples
#' meters_to_miles(500)

meters_to_miles <- function(x) {
  x / 1609.344
}
