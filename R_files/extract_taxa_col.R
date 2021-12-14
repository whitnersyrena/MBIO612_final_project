
#' Barplot for taxonomic diversity
#'
#' Function : select the 20 most abundant taxa (ex:families) and combute the abundance of ASV for each of them
#'
#' select the taxa column
#'
#' @name extract_taxa_col
#'
#'  @export

extract_taxa_col <- function (working_taxonomy_table, taxa_col) {

  taxonomy_taxa <- working_taxonomy_table %>%
    select ((.data[[taxa_col]]))

  taxonomy_taxa["variable"] <- row.names(taxonomy_taxa)

  assign("taxonomy_taxa", taxonomy_taxa, envir = .GlobalEnv)

}



