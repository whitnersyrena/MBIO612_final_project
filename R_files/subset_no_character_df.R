#' Subset so no more meta data: flipped ASV table
#'
#' @name subset_no_character_df 
#'
#' @export


subset_no_character_df <- function (full_df) {

  flipped_ASV_DNA_working_df <- full_df [!(sapply(full_df, is.character))]

  assign("flipped_ASV_DNA_working_df",  flipped_ASV_DNA_working_df, envir = .GlobalEnv)


}

