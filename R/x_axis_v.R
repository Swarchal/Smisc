#' Vertical x-axis labels
#'
#' Theme for ggplot to rotate and pad x-axis labels
#' @export

xlab_rotate <- function() theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.25))
