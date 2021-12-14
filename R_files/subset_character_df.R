#' flipped meta data
#'
#' @name subset_character_df
#'
#'  @export

subset_character_df <- function (full_df) {

  flipped_Meta_data_working_df <- full_df [(sapply(full_df, is.character))]

  assign("flipped_Meta_data_working_df", flipped_Meta_data_working_df, envir = .GlobalEnv)

}

