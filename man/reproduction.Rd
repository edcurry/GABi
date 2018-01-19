\name{reproduction}
\alias{reproduction}
\title{Reproduction}
\description{Wrapper to apply the genetic operators (crossover and mutation) in the GABi GA.}
\usage{reproduction(population,xfreq,mfreq,xoverpoints,pinvert,elitism)} 
\arguments{
	\item{population}{Numeric array representing a population of binary GA chromosomes.} 
	\item{xfreq}{Crossover frequency: probability of each pair of solutions having the crossover operator being applied.}
	\item{mfreq}{Mutation frequency: probability of flipping each bit in each GA solution is \code{mfreq/ncol(x)}.}
	\item{xoverpoints}{The number of 'crossover points' in the crossover operation (see details).}
	\item{pinvert}{The probability with which the order of the subset to be swapped of one of the solutions will be reversed prior to crossover.}	
	\item{elitism}{Boolean indicating whether or not the fittest solution should be guaranteed to pass into the next generation.}	 	 	
}
\details{Reproduction is the stage of a GA in which the solutions that are selected to be passed onto the next generation have the potential to be altered to construct new, and potentially better, solutions.}
\value{Numeric array representing a population of binary GA chromosomes, derived from \code{population}.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
