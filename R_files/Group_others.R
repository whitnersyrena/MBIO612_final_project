#' Replace the last 20 families by others
#'
#'@name Group_others
#'
#' @export

Group_others <- function (Taxa_only_df, taxa_name) {

  length_df <- nrow (Taxa_only_df)

  Taxa_only_df[21:length_df, taxa_name] <- "Other"

  Taxa_ASV_abundant_other <- Taxa_only_df

  assign("Taxa_ASV_abundant_other",  Taxa_ASV_abundant_other, envir = .GlobalEnv)
}
