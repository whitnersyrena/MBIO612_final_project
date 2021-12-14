#' Merge data tables into single table
#'
#'#' Function is a component of the data wrangling portion of the package. The function uses the
#' taxonomy_DNA and ASV_table_DNA data frames. ASV_table_DNA data frame shows the abundance of
#' amplicon sequence variances (ASVs) identified per sample. The ASVs are listed in rows and
#' the Sample IDs are listed across columns. taxonomy_DNA data frame includes the taxonomic
#' information for each species identified in the samples. The ASVs  are listed in rows and
#' the taxa (e.g. kingdom, phylum, etc.) are listed across columns. First, the data frames are
#' merged by their shared column "ID_ASV" via merge(). Next, the column ID_ASV is removed since
#' it is no longer necessary for analysis. Lastly, the resulting data frame combined_table is
#' assigned to the .GlobalEnv by assign().
#'
#'@name merge_full_table
#'
#' @export



merge_full_table <- function (taxonomy_DNA, ASV_table_DNA) {

  #Merge Taxonomy and ASV tables into a new object
  combined_table <- join(taxonomy_DNA, ASV_table_DNA)
  rownames(combined_table) <- rownames(ASV_table_DNA)


  #delete useless ID_ASV column for taxonxomy and ASV tables
  ASV_table_DNA$ID_ASV <- NULL
  taxonomy_DNA$ID_ASV <- NULL
  combined_table$ID_ASV <- NULL

  assign("combined_table", combined_table, envir = .GlobalEnv)

}
