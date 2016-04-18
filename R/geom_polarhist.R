#' polar histogram
#'
#' ggplot polar histogram set from 0 to 360 degrees
#' 
#' @param x data
#' @param group group
#' @export

geom_polar_hist <- function(x, group){
    ggplot(data = x,
            aes(x = theta,
    	    group = group)) + 
        geom_histogram(binwidth = 15,
    		    aes(fill = Metadata_concentration)) + 
        coord_polar(start = -1.57, direction = -1) + 
        scale_x_continuous(breaks = seq(0, 360, by = 45), expand = c(0,0), lim = c(0, 360)) +
        scale_size_area()
}
