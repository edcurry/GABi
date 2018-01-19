plotBicluster2 <- function(x,dataset, label=1, col=gray(seq(from=1,to=0,length=100))){
    library(gplots)

    rainbow12equal = c("#BF4D4D",
        "#BF864D",
        "#BFBF4D", 
        "#86BF4D",
        "#4DBF4D", 
        "#4DBF86", 
        "#4DBFBF", 
        "#4D86BF", 
        "#4D4DBF", 
        "#864DBF", 
        "#BF4DBF", 
        "#BF4D86")
    
    heatmap.2(dataset[x$features,c(x$samples,setdiff(1:ncol(dataset),x$samples))],
        col=col,Colv=NA,
        Rowv=NA,
        ColSideColors=c(rep("black",length(x$samples)),rep("white",ncol(dataset)-length(x$samples))),
        trace = "none", 
        colCol = rainbow12equal[label+1],
        key = F,
        lwid=c(0.1,4),
        lhei=c(0.1,4)
    )
}
