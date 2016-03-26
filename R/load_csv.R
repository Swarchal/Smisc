#' load all csv files in a folder
#'
#' Given a path to a folder, this function will load all files ending with
#' .csv into the global namespace
#'
#' @param path string, path to folder
#'
#' @export


load_csv <- function(path){
    
    temp = list.files(path, pattern="*.csv")
    
    for (i in 1:length(temp)){
        assign(temp[i], read.csv(temp[i]), envir = .GlobalEnv)
    }  
    
}
