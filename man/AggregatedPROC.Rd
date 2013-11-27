\name{AggregatedPROC}
\alias{AggregatedPROC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Prognostic ROC curve based on survival probabilities already computed
}
\description{
The user enters the survival according to the model she/he chooses. The area under the prognostic ROC curve is assessed by using the trapezoidal rules. The extrapolated areas (when survival curves do not reach 0) are performed by assuming pessimist, optimist and non-informative situation.
}
\usage{
AggregatedPROC(Time.LR, Surv.LR, Time.HR, Surv.HR)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Time.LR}{A numeric vector with the survival times in the low risk group.}
  \item{Surv.LR}{A numeric vector with the survival probabilities corresponding to \code{Time.LR}}
  \item{Time.HR}{A numeric vector with the survival times in the high risk group.}
  \item{Surv.HR}{A numeric vector with the survival probabilities corresponding to \code{Time.HR}.}
  }
\details{
The maximum prognostic time is the minimum between the maximum of \code{Time.LR} and the maximum of \code{Time.HR}.
}
\value{
\item{max.time}{This is the maximum prognostic time used for the analysis}
\item{table}{This data frame presents the different time cut-offs associated with the coordinates of the ROC curves.}
\item{auc}{This data frame presents the different estimations of the area under the prognostic ROC curve: the lower bound, the pessimist, the non-informative, the optimist and the upper bound.}
}
\references{
Combescure C, Perneger TV, Weber DC, Daures JP and Foucher Y. Prognostic ROC curves: a method for representing the overall discriminative capacity of binary markers with right-censored time-to-event endpoints. Manuscript in press. Epidemiology. 2013.
}
\author{
Y. Foucher <Yohann.Foucher@univ-nantes.fr> and

C. Combescure <Christophe.Combescure@hcuge.ch>
}

\examples{

# example of two survival curves using exponential distributions
time.hr <- seq(0, 600, by=5)
time.lr <- seq(0, 500, by=2)
surv.hr <- exp(-0.005*time.hr)
surv.lr <- exp(-0.003*time.lr)

# Illustration of both survival curves
plot(time.hr, surv.hr, xlab="Time (in days)",
 ylab="Patient survival", lwd=2, type="l")
lines(time.lr, surv.lr, lty=2, col=2, lwd=2)
legend("topright", c("High-Risk Group", "Low-Risk Group"), lwd=2,
 col=1:2, lty=1:2)

# Computation of the prognostic ROC curve
proc.result <- AggregatedPROC(time.lr, surv.lr, time.hr, surv.hr)

# Representation of the prognostic ROC curve
plot(proc.result$table$x, proc.result$table$y, type="l",
 lwd=2, xlim=c(0,1), ylim=c(0,1),
 xlab="1-Survival in the low risk group",
 ylab="1-Survival in the high risk group")
abline(c(0,0), c(1,1), lty=2)

# The pessimist value of the area under the curve
proc.result$auc$pessimist
}

\keyword{ Prognostic ROC }
\keyword{ Survival }
