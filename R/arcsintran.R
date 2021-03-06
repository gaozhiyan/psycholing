#' @title Arcsine transformation
#'
#' @description
#' Applies the arcsine transformation to x.
#'
#' @details
#' Historically, the arcsine transformation has been used on proportions to
#' make them more normally distributed, and thus suitable for use with
#' statistical models that assume normality.
#'
#' However, you may be better off with other transformations that better
#' approximate normality (e.g., the logit) or with logistic regression, which
#' directly reflects the binomial distribution of the DV
#'
#' This function is included primarily for demonstration or for comparison of
#' analytic methods and not as a recommended analytic procedure.
#' @param x value(s) to which the arcsine transformation should be applied.
#' @return numeric vector with the arcsine transformed proportions.
#' @seealso \code{\link{arcsinbacktran}} to transform back into proportions.
#' @references Jaeger, T. F. (2008). Categorical data analysis: Away from ANOVAs
#' (transformation or not) and towards logit mixed models. \emph{Journal of
#' Memory and Language}, \emph{59}, 434-446.
#' @examples
#' mydata = data.frame(Accuracy.Proportion = c(0.5,0.75,0.99,0, 0.2))
#' mydata$Accuracy.Arcsin <- arcsintran(mydata$Accuracy.Proportion)
#' @export

arcsintran <- function(x) {
	
	asin(sqrt(x))
	}