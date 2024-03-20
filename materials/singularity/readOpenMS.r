#!/usr/bin/env Rscript
options(stringAsfactors = FALSE, useFancyQuotes = FALSE)

# Taking the command line arguments
args <- commandArgs(trailingOnly = TRUE)

if(length(args)==0)stop("No file has been specified!\n")


dataInput<-NA
dataoutput<-NA

for(arg in args)
{
  argCase<-strsplit(x = arg,split = "=")[[1]][1]
  value<-strsplit(x = arg,split = "=")[[1]][2]
  if(argCase=="input")
  {
    dataInput=as.character(value)

  }
  if(argCase=="output")
  {
    dataoutput=as.character(value)
  }
}


data<-readLines(dataInput)

realData<-read.table(dataInput,skip = max(grep(data,pattern = "MAP",fixed = T)),header = F)

colNames<-strsplit(data[max(grep(data,pattern = "#CONSENSUS",fixed = T))],split = "\t")[[1]]

realData<-(realData[,grepl(colNames,pattern = "intensity_[[:digit:]]")])
realData[realData=="NaN"]<-NA

colnames(realData)<-basename(sapply(strsplit(data[grep(data,pattern = "^MAP\t",fixed = F)],split = "\t"),function(x){x[3]}))

write.csv(x = realData,file = dataoutput,row.names = F)
