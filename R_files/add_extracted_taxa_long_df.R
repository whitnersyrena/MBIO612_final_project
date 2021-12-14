#' Add the taxa col to the elongated table
#' @name add_extracted_taxa_long_df
#'
#'  @export

add_extracted_taxa_long_df <- function (long_df, working_taxonomy_table, taxa, by_variable) {

  taxa_col <- extract_taxa_col(working_taxonomy_table, taxa)


  Extracted_taxa_long_df <- merge (long_df, taxa_col, by= substitute(by_variable))


  Extracted_taxa_long_df <- data.frame (Extracted_taxa_long_df, stringsAsFactors = TRUE)


  Extracted_taxa_long_df [,by_variable] <- factor(Extracted_taxa_long_df[,by_variable])


  assign("Extracted_taxa_long_df", Extracted_taxa_long_df, envir = .GlobalEnv)

}