\name{featureSelection.basic}
\alias{featureSelection.basic}
\title{Feature Selection for Block Biclusters in Binary Data}
\description{A feature selection function for the GABi biclustering framework, based on the definition of a bicluster as a block of consistently high values across a submatrix within a binary dataset.}
\usage{featureSelection.basic(cols)} 
\arguments{
	\item{cols}{Numeric vector representing a subset of the columns from \code{x} across which this solution's bicluster pattern is defined.} 
}
\details{A fast feature selection function is vital to the GABi framework of biclustering. In GABi, the bicluster problem is reformulated around the fact that each subset of the columns across a dataset will have one _maximal_ subset of rows that fit a specified pattern, and the submatrix defined by this maximal subset of rows will be the most interesting observation involving that subset of columns. Makes use of \code{fitnessArgs} a list of parameters in the environment of execution of the biclustering function \code{GABi}. Notably, the element \code{consistency} is used to apply a stringency threshold for selecting features (i.e. only those with the proportion of high values across the subset of samples being greater than \code{consistency})}
\value{Numeric vector representing the features (i.e. rows) from dataset \code{x} representing the maximal bicluster for the solution encoded by \code{chr}.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
