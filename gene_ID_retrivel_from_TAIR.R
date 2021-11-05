getwd()

library(readxl)

df<-read.delim2("C:/Users/siva/Desktop/gene_descriptions_abi1.txt", header=T,sep='\t')
new_df <- data.frame(df)
df$names <-row.names(new_df)
res <- cbind(df$names, df$Gene.Model.Type, df$Primary.Gene.Symbol)
write.csv(res, file = "abi1td.csv", sep = ";", row.names = TRUE)

df1<-read.delim2("C:/Users/siva/Desktop/gene_descriptions_17.txt", header=T,sep='\t')
new_df1 <- data.frame(df1)
df1$names <-row.names(new_df1)
res1 <- cbind(df1$names, df1$Gene.Model.Type, df1$Primary.Gene.Symbol)
write.csv(res1, file = "mkkk17-1.csv", sep = ";", row.names = TRUE)

df2<-read.delim2("C:/Users/siva/Desktop/gene_descriptions_18.txt", header=T,sep='\t')
new_df2 <- data.frame(df2)
df2$names <-row.names(new_df2)
res2 <- cbind(df2$names, df2$Gene.Model.Type, df2$Primary.Gene.Symbol)
write.csv(res2, file = "mkkk18-1.csv", sep = ";", row.names = TRUE)

result <- rbind(res, res1, res2)
res3 <- unique(result)
write.csv(res3, file = "combined.csv", sep = ";", row.names = TRUE)