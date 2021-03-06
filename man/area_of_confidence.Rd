% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/area_of_confidence.R
\name{area_of_confidence}
\alias{area_of_confidence}
\title{Calculates area contained within 2D KDE confidence boundary}
\usage{
area_of_confidence(x, y, confidence = 0.9)
}
\arguments{
\item{x}{Values to be used on the x-axis}

\item{y}{Values to be used on the y-axis}

\item{confidence}{Confidence interval between 0 and 1
Default is 0.9, i.e 90\% confidence inverval}
}
\value{
The area within the calculated confidence boundary
}
\description{
Produces a confidence boudnary wth a 2D kernel density estimate from a bivariate scatter plot,
and then calculates the area within the confidence boundary.
}
\examples{
x <- rnorm(1000) ; y <- rnorm(1000)
area_of_confidence(x, y)
}

