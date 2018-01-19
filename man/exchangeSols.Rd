\name{exchangeSols}
\alias{exchangeSols}
\title{Solution exchange between isolated GA subpopulations}
\description{The GABi genetic algorithm employs an 'island' model, in which distinct subpopulations are allowed to evolve in isolation of each other. In order to avoid total isolation, subpopulations may periodically exchange a solution with each other. }
\usage{exchangeSols(demes,fitnesses,fittestonly,proximity)} 
\arguments{
	\item{demes}{List of numeric arrays, each one a distinct subpopulation of GA solutions.}
	\item{fitnesses}{List of numeric vectors, each one indicating the fitness of the corresponding solution (row) of the corresponding array in \code{demes}.}
	\item{fittestonly}{Boolean indicating whether or not only the fittest solution from each subpopulation is exchanged.}
	\item{proximity}{Boolean indicating whether or not the solution exchange can only occur between 'adjacent' subpopulations (i.e. consecutive elements of the list \code{demes}) or between any subpopulations.}  	
}
\details{In the solution exchange process, a predetermined number of randomly selected solutions from each subpopulation (i.e. rows from each numeric array) are swapped with solutions from another subpopulation. See Whitley 1995 for more details on the Island Model of GA populations.}
\value{ List of numeric arrays, as input \code{demes} but with some solutions having been exchanged between the subpopulations.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
