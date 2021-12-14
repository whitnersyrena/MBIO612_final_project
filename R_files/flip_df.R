#' flip the taxonomic/abundance
#'
#' @name flip_df
#'
#' @export



flip_df <- function (df) {

  flipped_df_working <- data.frame (t(df))

  assign ("flipped_df_working", flipped_df_working, envir = .GlobalEnv)

}
