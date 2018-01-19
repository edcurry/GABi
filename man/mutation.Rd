\name{mutation}
\alias{mutation}
\title{Mutation}
\description{Performs mutation genetic operator in GABi genetic algorithm.}
\usage{mutation(pop, mfreq)} 
\arguments{
	\item{pop}{Numeric array representing a population of binary GA chromosomes.} 
	\item{mfreq}{Numeric value defining probability with which each bit in \code{pop} will be flipped.}	 	 	
}
\details{Mutation randomly flips each bit in the GA chromosome  with some specified (low) probability.}
\value{ Numeric array representing a population of binary GA chromosomes, derived from \code{pop} but potentially altered by the mutation process.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
