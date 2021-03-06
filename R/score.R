#' Factor and Component Scores
#'
#' \code{score} calculates principal component or factor scores
#' based on the model generated by \code{\link{PCA}} and \code{\link{FA}}
#' functions
#'
#' @param data the data frame used to generate a PCA or FA model.
#' @param model the model generated by the \code{PCA} or \code{FA} functions.
#'
#' @details
#' The \code{score} function adds component or factor scores to a data frame. Scores
#' are calculated using the regression method.
#'
#' @export
#'
#' @return the data frame with component or factor scores appended.
#' @examples
#' ratings <- read.csv("https://www.promptcloud.com/wp-content/uploads/2017/02/EFA.csv")
#' fit.pca <- PCA(ratings, nfactors=2, rotate="varimax")
#' newdf <- score(ratings, fit.pca)
#' head(newdf)

score <- function(data, model) {


  # default number of factors
  if (!inherits(model, "factorAnalysis")){
    stop("model in not of class 'factorAnalysis', call. = FALSE")
  }

  scores <- as.data.frame(model$scores)
  df <- cbind(data, scores)
  invisible(df)
}


