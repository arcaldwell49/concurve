% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggcurve.R
\name{ggcurve}
\alias{ggcurve}
\title{Plots Consonance, Surprisal, and Likelihood Functions}
\usage{
ggcurve(data, type = "c", measure = "default", levels = 0.95,
  nullvalue = FALSE, position = "pyramid", title = "Interval Function",
  subtitle = "The function displays intervals at every level.",
  xaxis = expression(Theta ~ "Range of Values"),
  yaxis = expression(paste(italic(p), "-value")), color = "#000000",
  fill = "#239a98")
}
\arguments{
\item{data}{The dataframe produced by one of the interval functions
in which the intervals are stored.}

\item{type}{Choose whether to plot a "consonance" function, a
"surprisal" function or "likelihood". The default option is set to "c".
The type must be set in quotes, for example ggcurve (type = "s") or
ggcurve(type = "c"). Other options include "pd" for the consonance
distribution function, and "cd" for the consonance density function,
"l1" for relative likelihood, "l2" for log-likelihood, "l3" for likelihood
and "d" for deviance function.}

\item{measure}{Indicates whether the object has a log transformation
or is normal/default. The default setting is "default". If the measure
is set to "ratio", it will take logarithmically transformed values and
convert them back to normal values in the dataframe. This is typically a
setting used for binary outcomes and their measures such as risk ratios,
hazard ratios, and odds ratios.}

\item{levels}{Indicates which interval levels should be plotted on the function.
By default it is set to 0.95 to plot the 95\% interval on the consonance function,
but more levels can be plotted by using the c() function for example,
levels = c(0.50, 0.75, 0.95).}

\item{nullvalue}{Indicates whether the null value for the measure
should be plotted. By default, it is set to FALSE, meaning it will not be
plotted as a vertical line. Changing this to TRUE, will plot a vertical
line at 0 when the measure is set to " default" and a vertical line at
1 when the measure is set to "ratio". For example,
ggcurve(type = "c", data = df, measure = "ratio", nullvalue = "present").
This feature is not yet available for surprisal functions.}

\item{position}{Determines the orientation of the P-value (consonance) function.
By default, it is set to "pyramid", meaning the p-value function will
stand right side up, like a pyramid. However, it can also be inverted
via the option "inverted". This will also change the sequence of the
y-axes to match the orientation.This can be set as such,
ggcurve(type = "c", data = df, position = "inverted").}

\item{title}{A custom title for the graph. By default, it is
set to "Consonance Function". In order to set a title, it must
be in quotes. For example, ggcurve(type = "c",
data = x, title = "Custom Title").}

\item{subtitle}{A custom subtitle for the graph. By default, it is set
to "The function contains consonance/confidence intervals at every level
and the P-values." In order to set a subtitle, it must be in quotes.
For example, ggcurve(type = "c", data = x, subtitle = "Custom Subtitle").}

\item{xaxis}{A custom x-axis title for the graph. By default,
it is set to "Range of Values.
In order to set a x-axis title, it must be in quotes. For example,
ggcurve(type = "c", data = x, xaxis = "Hazard Ratio").}

\item{yaxis}{A custom y-axis title for the graph. By default,
it is set to "Consonance Level".
In order to set a y-axis title, it must be in quotes. For example,
ggcurve(type = "c", data = x, yxis = "Confidence Level").}

\item{color}{Item that allows the user to choose the color of the points
and the ribbons in the graph. By default, it is set to color = "#555555".
The inputs must be in quotes.
For example, ggcurve(type = "c", data = x, color = "#333333").}

\item{fill}{Item that allows the user to choose the color of the ribbons in the graph.
By default, it is set to fill = "#239a98". The inputs must be in quotes. For example,
ggcurve(type = "c", data = x, fill = "#333333").}
}
\value{
A plot with intervals at every consonance level graphed with their corresponding
p-values and compatibility levels.
}
\description{
Takes the dataframe produced by the interval functions and
plots the p-values/s-values, consonance (confidence) levels, and
the interval estimates to produce a p-value/s-value function
using ggplot2 graphics.
}
\examples{

# Simulate random data

library(concurve)

GroupA <- rnorm(500)
GroupB <- rnorm(500)

RandomData <- data.frame(GroupA, GroupB)

intervalsdf <- curve_mean(GroupA, GroupB, data = RandomData, method = "default")
ggcurve(type = "c", intervalsdf[[1]], nullvalue = TRUE)
}
\seealso{
\code{\link[=plot_compare]{plot_compare()}}
}
