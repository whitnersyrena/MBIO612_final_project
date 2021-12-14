#' Subset Meta data from working df
#'
#'
#' @name subset_df_nested 
#'
#' @export


subset_df_nested <- function (full_df, subset_df) {

  Meta_data_working_df <- full_df [,full_df %in% subset_df]
  Meta_data_working_df$Row.names <- row.names(subset_df)

  assign("Meta_data_working_df", Meta_data_working_df, envir = .GlobalEnv)

}
