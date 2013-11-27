\name{prognosticROC-package}
\alias{prognosticROC-package}
\alias{prognosticROC}
\docType{package}
\title{
Prognostic ROC curves
}
\description{
This package computes prognostic ROC curves.
}
\details{

The separation between two survival curves represents the magnitude of the association between the intervention and the time-to-event. A statistical test can determine the statistical significance of the difference but does not quantify its magnitude. The purpose of the prognostic ROC curve is to represent this uncertainty: the AUC is the probability that the time-to-event is improved in one arm compared to the other. This package is designed for computing such prognostic ROC curve with confidence intervals obtained by bootstrap resampling (from individual data only).

\tabular{ll}{
Package: \tab prognosticROC\cr
Type: \tab Package\cr
Version: \tab 0.7\cr
Date: \tab 2013-11-27\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}


\tabular{rl}{
AggregatedPROC \tab Compute prognostic ROC curve based on survival function already determined \cr
 \eqn{  } \tab by the user (parametric model, Kaplan-Meier curve, weighted estimations,...) \cr
IndividualPROC \tab Compute prognostic ROC curve based on individual data, survival function  \cr
 \eqn{  }  \tab are determined by the Kaplan-Meier estimator, confidence intervals are obtained \cr
 \eqn{  }  \tab  by bootstrap\cr
}
}
\author{
Y. Foucher <Yohann.Foucher@univ-nantes.fr>

and C. Combescure <Christophe.Combescure@hcuge.ch>
}
\references{
Combescure C, Perneger TV, Weber DC, Daures JP and Foucher Y. Prognostic ROC curves: a method for representing the overall discriminative capacity of binary markers with right-censored time-to-event endpoints. Manuscript in press. Epidemiology. 2013.
}

\keyword{ Prognostic ROC }
\keyword{ Survival }

\seealso{
URL: http://www.divat.fr
}
