#' merge the two data frames
#'
#'@name merge_factor_barplot
#'
#' @export

merge_factor_barplot <- function (mean_ASV_factor_df, factor_taxa_df, factor_name) {

  factor_barplot_df <- merge (mean_ASV_factor_df, factor_taxa_df, by= substitute(factor_name))

  assign("factor_barplot_df", factor_barplot_df, envir = .GlobalEnv)


}
