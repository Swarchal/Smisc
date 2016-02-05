#' Converts list to a dataframe in a sensible way
#'
#' Given a list of dataframes with the same columns, this function will row bind
#' them together, and if passed a \code{col_name} arguement, will produce a
#' column containing their original element name
#'
#' @param l list of dataframes to be converted into single dataframe
#' @param col_name (optional) name of column to put element names under
#'
#' @return dataframe
#' @export
#'
#' @examples
#' split_iris <- split(iris, iris$Species)
#' list_out <- lapply(split_iris, function(x) {x['Species'] <- NULL; x})
#' list_to_dataframe(list_out, col_name = "Species")


list_to_dataframe <- function(l, col_name = NULL){

  # check l is a list
  if (!is.list(l)) stop(paste(l , "needs to be a list"))

  # if col_name is a string, will create a new column from the element names
  # within the list
  if (!is.null(col_name)){
    # create column from list name
    for (name in names(l)){
      l[[name]][col_name] <- name
    }
  }

  # create data frame from list
  out_df <- do.call(rbind, l)
  rownames(out_df) <- NULL
  return(out_df)
}
