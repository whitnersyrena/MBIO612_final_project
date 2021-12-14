#' merge metadata
#'
#'@name merge_df
#'
#' @export


merge_df <- function (flipped_df, meta_data,  by_row_col) {


  combined_full_df <- flip_df(flipped_df)

  combined_df_Meta_data <- merge (combined_full_df, meta_data, by= substitute(by_row_col), all.y = T)

  assign ("combined_df_Meta_data", combined_df_Meta_data, envir = .GlobalEnv)

}
