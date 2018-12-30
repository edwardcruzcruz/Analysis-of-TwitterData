# Example R program to read CSV File
 
#set working directory - the directory containing csv file
setwd("/home/edward/Documents/LP/proyecto2")
 
#read csv file
csvDataUniverso = read.csv("eluniversocom_tweets.csv")
csvDataExtra = read.csv("DiarioExtraEc_tweets.csv")
csvDataExpreso = read.csv("Expresoec_tweets.csv")
csvDataSuper = read.csv("SUPERCANCHERO_tweets.csv")

Firstdate <- subset(csvDataUniverso,grepl("^2018-12", created_at) & grepl("Guayaquil", text)& (grepl("robo", text) | grepl("asalto", text) | grepl("delito", text)) )
print(Firstdate)
#-----------------------------fin ----------------
# print the data type of csvData
#cat("CSV Data type : ",class(csvData), "\n\n")
 
#print(csvData)
