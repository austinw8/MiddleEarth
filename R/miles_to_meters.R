#' Convert miles to meters
#'
#' @param x a numeric value
#'
#' @return a numeric value
#' @export
#'
#' @examples
#' miles_to_meters(500)

miles_to_meters <- function(x) {
  x * 1609.344
}
