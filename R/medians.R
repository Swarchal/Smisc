#' Column Median
#'
#' The missing colMedian function. Works just like \code{colMeans()}
#'
#' @param x dataframe or matrix
#' @param ... additional arguments to be passed to \code{median()}
#'
#' @export

colMedians <- function(x, ...) as.numeric(apply(x, 2, median, ...))

#' Row Median
#'
#' The missing rowMedian function. Works just like \code{rowMeans()}
#'
#' @param x dataframe or matrix
#' @param ... additional arguments to be passed to \code{median()}
#'
#' @export

rowMedians <- function(x, ...) apply(x, 1, median, ...)
