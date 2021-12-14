#' Select only the data that is anotated to the given taxa level
#'
#'@name read_3_files 
#'
#' @export

select_taxa_only <- function (combined_full_df, taxa) {

  long_taxa_ASV_df <- combine_tax_abundance (combined_full_df, {{taxa}})

  #Make the value column numeric

  long_taxa_ASV_df[,"value"] <- as.integer(long_taxa_ASV_df[,"value"])

  assign("long_taxa_ASV_df",  long_taxa_ASV_df, envir = .GlobalEnv)

}
