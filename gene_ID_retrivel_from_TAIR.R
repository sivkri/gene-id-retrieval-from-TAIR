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

#alternative method

library(readxl)

# Function to process the data
process_data <- function(file_path, output_file) {
  df <- read.delim2(file_path, header = TRUE, sep = '\t')
  new_df <- data.frame(df)
  df$names <- row.names(new_df)
  res <- cbind(df$names, df$Gene.Model.Type, df$Primary.Gene.Symbol)
  write.csv(res, file = output_file, sep = ";", row.names = TRUE)
  return(res)
}

# Process each file and store the results in a list
file_paths <- c("C:/Users/siva/Desktop/gene_descriptions_abi1.txt",
                "C:/Users/siva/Desktop/gene_descriptions_17.txt",
                "C:/Users/siva/Desktop/gene_descriptions_18.txt")

output_files <- c("abi1td.csv", "mkkk17-1.csv", "mkkk18-1.csv")

results <- lapply(1:length(file_paths), function(i) {
  process_data(file_paths[i], output_files[i])
})

# Combine the results
result <- do.call(rbind, results)
res3 <- unique(result)
write.csv(res3, file = "combined.csv", sep = ";", row.names = TRUE)
