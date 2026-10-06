#' Nicer histogram
#' @param x numeric vector
#' @param title plot title
#' @param binwidth bar width
#' @export
nice_hist <- function(x, title = "Histogram", binwidth = NULL) {
  ggplot2::ggplot(data.frame(value = x), ggplot2::aes(x = value)) +
    ggplot2::geom_histogram(binwidth = binwidth, fill = "steelblue", color = "white") +
    ggplot2::labs(title = title, x = NULL, y = "Count") +
    ggplot2::theme_bw()
}

#' Quick summary of a numeric vector
#' @param x numeric vector
#' @export
quick_summary <- function(x) {
  c(n = length(x), mean = mean(x), sd = sd(x), min = min(x), max = max(x))
}
