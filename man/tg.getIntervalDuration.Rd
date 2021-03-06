% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tg.R
\name{tg.getIntervalDuration}
\alias{tg.getIntervalDuration}
\title{tg.getIntervalDuration}
\usage{
tg.getIntervalDuration(tg, tierInd, index)
}
\arguments{
\item{tg}{TextGrid object}

\item{tierInd}{tier index or "name"}

\item{index}{index of interval}
}
\value{
numeric
}
\description{
Return duration (i.e., end - start time) of interval in interval tier.
}
\examples{
tg <- tg.sample()
tg.getIntervalDuration(tg, "phone", 5)
}
\seealso{
\code{\link{tg.getIntervalStartTime}}, \code{\link{tg.getIntervalEndTime}}, \code{\link{tg.getIntervalIndexAtTime}}, \code{\link{tg.findLabels}}
}
