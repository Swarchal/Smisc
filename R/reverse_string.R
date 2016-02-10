#' Reverse string
#'
#' As reverse("string") doesn't work, here's the function that does
#'
#' @param s string
#' @return string. reverse of s
#' @export
#' @examples
#' reverse_str("string")

reverse_str <- function(s){
	paste(rev(strsplit(s,'')[[1]]),collapse='')
}
