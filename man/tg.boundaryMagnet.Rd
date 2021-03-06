% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tg.R
\name{tg.boundaryMagnet}
\alias{tg.boundaryMagnet}
\title{tg.boundaryMagnet}
\usage{
tg.boundaryMagnet(
  tg,
  targetTier,
  patternTier,
  boundaryTolerance = Inf,
  verbose = TRUE
)
}
\arguments{
\item{tg}{TextGrid object}

\item{targetTier}{index or "name" of the tier to be aligned}

\item{patternTier}{index or "name" of the pattern tier}

\item{boundaryTolerance}{if there is not any boundary in the pattern tier within this tolerance, the target boundary is kept at its position [default: \code{Inf}]}

\item{verbose}{if TRUE, every boundary shift is printed [default: \code{TRUE}]}
}
\value{
TextGrid object
}
\description{
Aligns boundaries of intervals in the target tier (typically: "word") to the closest boundaries in the pattern tier (typically: "phone").
If there is no boundary within the tolerance limit in the pattern tier, the boundary position in the target tier is kept at its original position.
}
\examples{
\dontrun{
tg <- tg.sample()
tg <- tg.removeTier(tg, "phoneme")
tg <- tg.removeTier(tg, "syllable")
tg <- tg.removeTier(tg, "phrase")

# garble times in "word" tier a little
n <- length(tg$word$label)
deltaT <- runif(n - 1, min = -0.01, max = 0.015)
tg$word$t2[1: (n-1)] <- tg$word$t2[1: (n-1)] + deltaT
tg$word$t1[2: n] <- tg$word$t2[1: (n-1)]
tg.plot(tg)

# align "word" tier according to "phone tier"
tg2 <- tg.boundaryMagnet(tg, targetTier = "word", patternTier = "phone")
tg.plot(tg2)
}
}
\seealso{
\code{\link{tg.insertBoundary}}, \code{\link{tg.insertInterval}}, \code{\link{tg.duplicateTier}}
}
