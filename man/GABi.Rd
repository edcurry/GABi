\name{GABi}
\alias{GABi}
\title{Genetic Algorithm for Generalized Biclustering}
\description{A flexible framework for finding submatrices that are good manifestations of a user-specified pattern from within a numeric (often binary) matrix. The user-defined pattern is specified via feature selection and bicluster desirability evaluation functions (see details).}
\usage{GABi(x,nSols=0,convergenceGens=40,popsize=256,mfreq=1,xfreq=0.5,
maxNgens=200,keepBest=FALSE,identityThreshold=0.75,
nsubpops=4,experiod=10,diffThreshold=0.9,verbose=FALSE,maxLoop=1,
fitnessArgs=list(consistency=0.8,featureWeights = rowMeans(x, na.rm = TRUE)),
fitnessFun=getFitnesses.entropy,featureSelFun=featureSelection.basic)}
\arguments{
	\item{x}{Numeric data input array used to generate binary output array. Each row of the array represents a different variable.}
	\item{nSols}{Number of solutions at which to terminate loop.}
	\item{convergenceGens}{Number of generations after which to terminate the GA process within each loop if no improvement to the best solution's fitness is seen.}
	\item{popsize}{Total number of solutions to be evolved in GA (divided across \code{nsubpops} subpopulations.)}
	\item{mfreq}{Mutation frequency: probability of flipping each bit in each GA solution is \code{mfreq/ncol(x)}.}
	\item{xfreq}{Crossover frequency: probability of each pair of solutions having the crossover operator being applied.}
	\item{maxNgens}{Maximum number of generations in GA process within each loop.}
	\item{keepBest}{Boolean specifying whether or not to pass the best solution from each generation unchanged into the next.}
	\item{identityThreshold}{Numeric value specifying the proportion of shared columns from \code{x} above which two biclusters are considered redundant and only the best is output as a solution.}
	\item{nsubpops}{Numeric value specifying the number of distinct subpopulations across which to distribute the GAs population of solutions. For more details on the Island Model of GAs, see Whitley 1995. If \code{nsubpops=1}, a traditional (non-Island) GA will be implemented.}
	\item{experiod}{Number of generations after which to exchange solutions between the distinct GA subpopulations. If \code{experiod} is greater than \code{maxNgens}, the subpopulations will be kept completely distinct.}
	\item{diffThreshold}{Numeric value specifying minimum proportion of values in each row of \code{x} to be greater than the minimum or less than the maximum value. Included primarily as a filter to remove invariant rows from binary datasets \code{x}.}
	\item{verbose}{Boolean indicating whether or not to print diagnostic messages to R console.}
	\item{maxLoop}{Numeric value specifying maximum number of runs of the GA, after which GABi will terminate and return all recovered solutions, even if \code{nSols} isn't reached.}
	\item{fitnessArgs}{List containing arguments to be used in \code{fitnessFun} and \code{featureSelFun}.}
	\item{fitnessFun}{Function taking argument \code{chr}, a numeric vector specifying the solution to be evaluated. All other arguments to be used in the function should be specified in \code{fitnessArgs}. Must return a single numeric value indicating the relative fitness (i.e. 'goodness') of the solution.}
	\item{featureSelFun}{Function taking argument \code{chr}, a numeric vector specifying the solution to be evaluated. All other arguments to be used in the function should be specified in \code{fitnessArgs}. Must return a numeric vector indicating which features (i.e. rows of \code{x}) to be included in the bicluster.}
}
\details{GABi uses flexible user-defined (or preset) functions to perform generalized biclustering of a numeric or binary data matrix \code{x}. It implements a number of features, including an Island Model of population evolution (in which a number of distinct subpopulations are kept isolated for the purposes of selection and crossover) and an iterative loop of solution generation (in which the GA process is rerun with a 'tabu' list, ensuring that previously returned solutions are not selected for in subsequent runs of the GA). Given an appropriate fitness function \code{fitnessFun} and feature selection function \code{featureSelFun}, which take a binary chromosome (in which a \code{1} denotes that the corresponding column of \code{x} is included in the bicluster) and return a desirability score and a list of the features fitting the bicluster pattern across the specified columns, respectively.}
\value{List of biclusters. Each bicluster represents a submatrix satisfying the conditions of the specified pattern, and contains the elements:
	\item{features}{Which rows of the input array \code{x} are in this bicluster}
	\item{samples}{Which columns of the input array \code{x} are in this bicluster}
	\item{score}{Fitness evaluation of this bicluster (can be used to compare the different biclusters output by the algorithm)}
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
## create a binary array
x <- array(round(runif(1200)),dim=c(100,12))
\dontrun{x}

## use GABi to find biclusters
x.bc <- GABi(x,maxNgens=20)
\dontrun{x.bc}
}
