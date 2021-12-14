#' Read in multiple files
#'
#'@name read_3_files 
#'
#' @export


read_3_files <- function (taxonomy_df, Abundance_ASV_df, meta_data_df) {

  taxonomy_DNA <- as.data.frame(fread(taxonomy_df))
  ASV_table_DNA <- as.data.frame(fread (Abundance_ASV_df, header = TRUE))
  metadata_df_DNA <- as.data.frame(fread (meta_data_df))

  #set row.names properly for taxonomy and ASV and metadata files
  rownames(ASV_table_DNA) <- ASV_table_DNA$ID_ASV
  rownames(taxonomy_DNA) <- taxonomy_DNA$ID_ASV
  rownames(metadata_df_DNA) <- metadata_df_DNA$Sample

  assign("taxonomy_DNA", taxonomy_DNA, envir = .GlobalEnv)
  assign("ASV_table_DNA", ASV_table_DNA, envir = .GlobalEnv)
  assign("metadata_df_DNA", metadata_df_DNA, envir = .GlobalEnv)

}

