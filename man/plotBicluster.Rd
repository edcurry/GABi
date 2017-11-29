\name{plotBicluster}
\alias{plotBicluster}
\title{Bicluster Visualization}
\description{Creates a heatmap contrasting the data values for a bicluster's features across the bicluster with those features' values across the remainder of the dataset.}
\usage{plotBicluster(x,dataset,col=gray(seq(from=1,to=0,length=100)))}
\arguments{
	\item{x}{Bicluster object returned from \code{GABi}}
	\item{dataset}{Numeric matrix in which bicluster \code{x} was discovered}
	\item{col}{Colors to use in heatmap}
}
\details{Uses \code{heatmap} to generate a false color image that illustrates the data values corresponding to the bicluster \code{x}. Default color is grayscale. A black/white bar along the top of the heatmap indicates the extent of bicluster membership (i.e. columns of the heatmap below the black bar come from data columns that were in the bicluster).}
\value{An object returned by \code{heatmap}. That is, invisibly, a list with components:
	\item{rowInd}{row index permutation vector as returned by \code{order.dendrogram}}
	\item{colInd}{column index permutation vector}}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
