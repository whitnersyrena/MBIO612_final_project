#' calculate mean number of ASV per sample per factor
#'
#'calculate_mean_ASV_ps
#'
#' @export

calculate_mean_ASV_factor_ps <- function (meta_data_ASV_df, ASV_col, factor_col) {

  ASV_per_group <- meta_data_ASV_df %>%
    dplyr::group_by(.data[[ASV_col]], .data[[factor_col]]) %>%
    dplyr::summarize(sum_abundance_ASV_factor_ps = sum(value, na.rm = T))



  Mean_ASV_per_sample_for_ea_factor <- ASV_per_group %>%
    dplyr::group_by(.data[[factor_col]]) %>%
    dplyr::summarize (mean_abundance_ASV_factor_ps = mean(sum_abundance_ASV_factor_ps, na.rm= TRUE))

  assign("ASV_per_group",  ASV_per_group, envir = .GlobalEnv)
  assign("Mean_ASV_per_sample_for_ea_factor", Mean_ASV_per_sample_for_ea_factor, envir = .GlobalEnv)

}