\name{crossover}
\alias{crossover}
\title{Crossover}
\description{Performs crossover genetic operator in GABi genetic algorithm.}
\usage{crossover(subpop,xoverpoints,pinvert=0)} 
\arguments{
	\item{subpop}{A numeric array representing a population of GA solutions. Each row corresponds to a distinct solution}
	\item{xoverpoints}{The number of 'crossover points' in the crossover operation (see details).}
	\item{pinvert}{The probability with which the order of the subset to be swapped of one of the solutions will be reversed prior to crossover.} 	 	 	
}
\details{Crossover exchanges parts of two GABi solutions, giving rise to two 'offspring' solutions, each containing parts of the two 'parent' solutions. The position of the crossover points (i.e. the limits of the regions of the solutions that will be swapped with each other) is randomly sampled from the whole length of available positions (constrained only by the number of crossover points chosen).}
\value{A numeric array representing a population of GA solutions. Each row corresponds to a distinct solution.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
