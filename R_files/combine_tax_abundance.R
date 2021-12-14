#' Combine taxonomic abundance
#'
#' Remove the ASVs that haven't been classified up to the desired taxonomic level (ex: exclude ASV that haven't been anotated to the phylum l
#'
#' @name combine_tax_abundance
#'
#'
#'
#' @export


combine_tax_abundance <- function (combined_full_df, taxa_col) {

  combined_df_working <- combined_full_df %>%  filter({{taxa_col}} != "")

  assign ("combined_df_working", combined_df_working , envir = .GlobalEnv)

}