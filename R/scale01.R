#' Scales values between 0 and 1
#'
#' Lowest value will be 0, highest will be 1.
#'
#' @param x numeric vector
#'
#' @export

scale01 <- function(x){
    (x - min(x)) / (max(x) - min(x))
}
