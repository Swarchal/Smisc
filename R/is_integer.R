#' What is.integer() should be
#'
#' Determines if a number is an integer.
#'
#' @param x number of vector of numbers
#' @return boolean
#' @export

is_integer <- function(x){

    if(length(x) == 1){
        if (x %% 1 == 0){
            return(TRUE)
        } else return(FALSE)
    }
  
    if (length(x) > 1) mapply(is_integer, x)

}
