% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pt.R
\name{pt.read}
\alias{pt.read}
\title{pt.read}
\usage{
pt.read(fileNamePitchTier, encoding = "UTF-8")
}
\arguments{
\item{fileNamePitchTier}{file name of PitchTier}

\item{encoding}{File encoding (default: \code{"UTF-8"}), \code{"auto"} for auto-detect of Unicode encoding}
}
\value{
PitchTier object
}
\description{
Reads PitchTier from Praat. Supported formats: text file, short text file,
spreadsheet, headerless spreadsheet (headerless not recommended,
it does not contain tmin and tmax info).
}
\examples{
\dontrun{
pt <- pt.read("demo/H.PitchTier")
pt.plot(pt)
}
}
\seealso{
\code{\link{pt.write}}, \code{\link{pt.plot}}, \code{\link{pt.Hz2ST}}, \code{\link{pt.cut}}, \code{\link{pt.cut0}}, \code{\link{pt.interpolate}}, \code{\link{pt.legendre}}, \code{\link{tg.read}}, \code{\link{pitch.read}}, \code{\link{formant.read}}, \code{\link{it.read}}, \code{\link{col.read}}
}
