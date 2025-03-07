% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_means.R
\name{get_means}
\alias{get_means}
\title{Compute estimated means from models.}
\usage{
get_means(fit, formula = NULL, CI = 90, ...)
}
\arguments{
\item{fit}{A model (lm, lme4 or rstanarm).}

\item{formula}{A character vector (formula like format, i.e., including
interactions or nesting terms) specifying the names of the predictors over which EMMs are desired.}

\item{CI}{Determine the confidence or credible interval bounds.}

\item{...}{Arguments passed to or from other methods. For instance, transform="response".}
}
\value{
Estimated means (or median of means for Bayesian models)
}
\description{
Compute estimated means of factor levels based on a fitted model.
}
\examples{
\dontrun{
library(psycho)
require(lmerTest)
require(rstanarm)


fit <- glm(Sex ~ Birth_Season, data = affective, family = "binomial")
get_means(fit)

fit <- lmerTest::lmer(Adjusting ~ Birth_Season * Salary + (1 | Salary), data = affective)
get_means(fit, formula = "Birth_Season")

fit <- rstanarm::stan_glm(Adjusting ~ Birth_Season, data = affective)
get_means(fit, formula = "Birth_Season")
}
}
\author{
\href{https://dominiquemakowski.github.io/}{Dominique Makowski}
}
