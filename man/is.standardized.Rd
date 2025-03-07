% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.standardized.R
\name{is.standardized}
\alias{is.standardized}
\title{Check if a dataframe is standardized.}
\usage{
is.standardized(df, tol = 0.1)
}
\arguments{
\item{df}{A dataframe.}

\item{tol}{The error treshold.}
}
\value{
bool.
}
\description{
Check if a dataframe is standardized.
}
\examples{
library(psycho)

df <- psycho::affective
is.standardized(df)

dfZ <- psycho::standardize(df)
is.standardized(dfZ)
}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
