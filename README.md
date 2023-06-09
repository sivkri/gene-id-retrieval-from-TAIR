# Retrieve gene ID for the genes of interest from TAIR database
# Gene ID Retrieval from TAIR

This repository contains R code that retrieves gene IDs from TAIR (The Arabidopsis Information Resource) and exports them as CSV files. The code processes multiple input files, performs data manipulation, removes duplicates, and generates output files with the retrieved gene IDs.

## Usage

1. Make sure you have R and the necessary packages installed. The code uses the `readxl` package, which can be installed using the following command in R:

   ```R
   install.packages("readxl")
   ```
   
2. Clone or download this repository to your local machine.

3. Modify the file paths and output file names in the `gene_ID_retrieval_from_TAIR.R` script to match your specific file locations.

4. Run the `gene_ID_retrieval_from_TAIR.R` script in an R environment (e.g., RStudio) or via the command line using the command:

   ```shell
   Rscript gene_ID_retrieval_from_TAIR.R
   ```

5. The script will process the input files, retrieve the gene IDs, remove duplicates, and export the results as CSV files.

## File Structure

- `gene_ID_retrieval_from_TAIR.R`: The main R script that retrieves gene IDs from TAIR and exports them as CSV files.
- `gene_descriptions_abi1.txt`: Example input file containing gene descriptions for the ABI1 gene.
- `gene_descriptions_17.txt`: Example input file containing gene descriptions for gene 17.
- `gene_descriptions_18.txt`: Example input file containing gene descriptions for gene 18.
- `abi1td.csv`: Output CSV file containing gene IDs for the ABI1 gene.
- `mkkk17-1.csv`: Output CSV file containing gene IDs for gene 17.
- `mkkk18-1.csv`: Output CSV file containing gene IDs for gene 18.
- `combined.csv`: Combined output CSV file with unique gene IDs from all input files.

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
