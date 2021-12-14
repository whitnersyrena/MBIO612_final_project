#' Select the 20 most abundant families/phylum (taxa) and label and combine the other ones as other labelled the "others" together
#'
#' @name read_3_files 
#'
#' @export

subset_20_most_abundant_and_others <- function (Taxa_only_df, taxa_name) {

  Taxa_ASV_abundant <- Taxa_only_df %>%
    group_by({{taxa_name}}) %>%
    drop_na() %>%
    dplyr::summarize (sum_asv= sum(value)) %>%
    arrange(desc(sum_asv)) %>%
    mutate (sum_asv_cumul =  if_else (row_number (sum_asv)< (length(sum_asv)-19), "Other", as.character(sum_asv))) %>%
    mutate(sum_asv = replace(sum_asv, sum_asv_cumul == "Other", sum(sum_asv[sum_asv_cumul == "Other"])))

  assign("Taxa_ASV_abundant",  Taxa_ASV_abundant, envir = .GlobalEnv)
}
