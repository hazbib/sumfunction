#' Adds seven to a variable in an intentionally confusing way
#'
#' @param x is an unquoted variable name
#' @return the value of x with added 7
#' @examples
#' x <- 10
#' confusing_adder(x)
#'
#' y <- 20
#' confusing_adder(y)

confusing_adder <- function(x) {
  x_exprs <- substitute(x + 7, env = parent.frame())
  value <- eval(x_exprs, parent.frame())
  return(value)
}

