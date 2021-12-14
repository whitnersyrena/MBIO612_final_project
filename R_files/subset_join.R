#'Subset taxonomy from working df
#'
#' @name subset_join
#'
#' @export

subset_join <- function (full_df, subset_df) {

  taxonomy_DNA_working_df <- semi_join(subset_df, full_df)
  assign("taxonomy_DNA_working_df", taxonomy_DNA_working_df, envir = .GlobalEnv)

}

subset_join (combined_df_working, taxonomy_DNA)
