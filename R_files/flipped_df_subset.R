#' merge flipped ASV_table working with meta data: no taxonomy
#'
#'@name flipped_df_subset
#'
#' @export

flipped_df_subset <- function (full_df, meta_data_df) {

  t_ASV_table_DNA_working <- flip_df (full_df)

  metadata_df <- meta_data_df %>%
    mutate_all(as.character)

  row.names(metadata_df)<- metadata_df$Sample

  flipped_ASV_Meta_data_working <- na.omit(merge(t_ASV_table_DNA_working, metadata_df, by="row.names",all.y=T))

  rownames(flipped_ASV_Meta_data_working) <- flipped_ASV_Meta_data_working[,1]

  flipped_ASV_Meta_data_working$Row.names <- NULL

  assign("flipped_ASV_Meta_data_working_df", flipped_ASV_Meta_data_working, envir = .GlobalEnv)
  assign("t_ASV_table_DNA_working",  t_ASV_table_DNA_working,  envir = .GlobalEnv)


}

