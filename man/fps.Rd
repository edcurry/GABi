\name{fps}
\alias{fps}
\title{Fitness Proportional Selection}
\description{Performs selection step in GA process using fitness proportional selection.}
\usage{fps(population,fitnesses,elitism)} 
\arguments{
	\item{population}{Numeric array representing a population of binary GA chromosomes.} 
	\item{fitnesses}{Numeric vector specifying relative fitnesses of each solution (row) of \code{population}.}
	\item{elitism}{Boolean indicating whether or not the fittest solution should be guaranteed to pass into the next generation.}	 	 	
}
\details{Fitness Proportional Selection }
\value{Numeric array representing a population of binary GA chromosomes. Sampled with replacement from rows of \code{population}, biased towards each individual solution in direct proportion to its relative fitness.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
