#' long version of the table
#'
#' @name elongate_df
#'
#' @export


elongate_df <- function (full_df, names_df) {

  long_combined_ASV_Meta_data_df <- melt(full_df, id= names (names_df))

  assign("long_combined_ASV_Meta_data_df", long_combined_ASV_Meta_data_df, envir = .GlobalEnv)

}

