#' opens multiple csv files and binds them together
#'
#' opens all csv files in a folder, and assigns each an identifying column
#' indicating which file it came from, and binds all data frames together
#' in a row-wise fashion. Data frames have to have the same columns and column headers
#'
#' @param path string, path to folder containing .csv files
#' @param col_name string, name to call new column listing the origin for
#'	each file.
#' @param ... additional arguments to \code{read.csv}
#'
#' @param export

rbind_all <- function(path, col_name = "origin", ...){
    
    full_path <- list.files(path, pattern = "*.csv", full.names = TRUE)
    short_path <- list.files(path, pattern = "*.csv", no.. = TRUE)
    
    for (file in full_path){
        # read the file
        new_file <- read.csv(file, header = TRUE,...)
        # assign new column named 'origin' with name of file
        new_file[, col_name] <- paste(short_path)
        # bind dataframes together under variable 'master_file'
        master_file <- rbind(new_file)
    } 
    
    return(master_file)
}
