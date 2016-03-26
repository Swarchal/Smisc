#' Removes columns consisting of only NA
#'
#' Given a dataframe this will remove the columns that contain only NA values.
#'
#' @param df dataframe
#' @export

rm_col_na <- function(df){
    df[,colSums(is.na(df)) != nrow(df)]
}
