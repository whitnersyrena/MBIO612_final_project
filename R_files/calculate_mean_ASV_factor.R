#' Find the mean number of ASV per taxa per factor
#'
#' @name calculate_mean_ASV_factor
#'
#' @export

calculate_mean_ASV_factor <- function (meta_data_ASV_df, taxa_name, factor_col) {

  meta_data_ASV_df[,"value"] <- as.numeric(meta_data_ASV_df[,"value"])


  ASV_per_group_per_taxa <- meta_data_ASV_df %>%
    dplyr::group_by(.data[[factor_col]], .data[[taxa_name]]) %>%
    dplyr::summarize(mean_abundance_ASV_group =  mean(value,na.rm=T))

  assign("ASV_per_group_per_taxa",  ASV_per_group_per_taxa, envir = .GlobalEnv)
}