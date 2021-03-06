% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snd.R
\name{as.snd}
\alias{as.snd}
\title{as.snd}
\usage{
as.snd(snd, name = "")
}
\arguments{
\item{snd}{snd object}

\item{name}{New name}
}
\value{
snd object
}
\description{
Renames the \code{class(snd)["name"]} attribute and sets \code{class(snd)["type"] <- "Sound"} (if it is not already set)
}
\details{
At least, \code{$sig} and \code{$fs} members must be present in \code{snd} list.

If not present, it calculates \code{$t}, \code{$nChannels}, \code{$nBits} (default: 16), \code{$nSamples}, and \code{$duration} members of \code{snd} list
}
\examples{
class(snd.sample())
class(as.snd(snd.sample(), name = "New Name"))
}
