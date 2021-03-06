% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biplot.R
\name{biPlot}
\alias{biPlot}
\title{Principal Components Biplot}
\usage{
biPlot(data, ...)
}
\arguments{
\item{data}{a data frame.}

\item{...}{parameters passed to the \code{factoextra::fviz_pca_biplot} function.}
}
\value{
a ggplot2 graph
}
\description{
\code{biPlot} performs a principal components analysis and displays the variables
and observations in the space of the first two principal components.
}
\details{
The \code{biPlot} function is a wrapper for the
\code{\link[stats]{prcomp}} and
\code{\link[factoextra]{fviz_pca_biplot}} functions. For the former,
\code{center=TRUE} and \code{scale=TRUE} are set. For the later,
\code{repel=TRUE} is set.
}
\examples{
biPlot(USArrests)
}
