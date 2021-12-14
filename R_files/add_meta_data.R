#' Add meta data to families
#'
#' @name add_meta_data
#'
#' @export

add_meta_data <- function (Taxa_df, meta_data, taxa_name) {

  Taxa_df_Meta_data <- merge(Taxa_df, meta_data, by= substitute(taxa_name))

  Taxa_df_Meta_data [,"sum_asv_cumul"] <- NULL

  assign("Taxa_df_Meta_data",  Taxa_df_Meta_data, envir = .GlobalEnv)

}
