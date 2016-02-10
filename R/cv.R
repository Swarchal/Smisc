#' Coefficient of Variation
#'
#' Coefficient of variation
#'
#' @param x numeric vector
#' @param ... additional arguments to be passed to \code{sd} and \code{mean}
#'    i.e \code{na.rm = TRUE}
#'
#' @export

cv <- function(x, ...){
    (sd(x, ...) / mean(x, ...)) * 100
}
