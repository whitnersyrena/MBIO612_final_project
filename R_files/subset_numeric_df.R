#' Subset ASV abundance from working df
#' 
#' @name subset_numeric_df
#'
#' @export

subset_numeric_df <- function (full_df) {

  ASV_DNA_working_df <- full_df [sapply(full_df, is.numeric)]
  assign("ASV_DNA_working_df", ASV_DNA_working_df, envir = .GlobalEnv)


}
