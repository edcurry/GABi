\name{getFitnesses.basic}
\alias{getFitnesses.basic}
\title{Basic Bicluster Fitness Function}
\description{A fitness function for the GABi biclustering framework, based on the simple principle that the larger the dense submatrix, the more interesting it is to discover.}
\usage{getFitnesses.basic(chr)} 
\arguments{
	\item{chr}{Numeric vector representing a GA solution to the biclustering problem (i.e. a subset of the columns from \code{x} across which to look for the pattern).} 
}
\details{A fitness function is fundamental to the success of a GA. In this case, \code{getFitnesses.basic} evaluates the desirability of biclusters by multiplying the number of columns from dataset \code{x} (argument for function \code{GABi}) that displaying a consistent block of \code{1}s involving the features that are observed to fit this pattern. Makes use of \code{fitnessArgs} a list of parameters in the environment of execution of the biclustering function \code{GABi}. Notably, the element \code{consistency} is used to apply a stringency threshold for selecting features (i.e. only those with the proportion of high values across the subset of samples being greater than \code{consistency}).}
\value{Numeric value representing fitness score for the solution encoded by \code{chr}.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
