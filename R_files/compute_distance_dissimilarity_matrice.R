#' obtain distance matice for NMDS 1 and 2
#'
#' @name compute_distance_dissimilarity_matrice
#'
#' @export

compute_distance_dissimilarity_matrice <- function (ASV_df, method_distance, Meta_data) {

  distances <- vegdist(ASV_df, method= {{method_distance}}, na.rm=T)

  coordinates <- metaMDS(distances)

  scores_table <- as.data.frame(scores(coordinates))

  scores_table_NMDS <- merge(scores_table, Meta_data, by="row.names", all.x=T)

  assign("scores_table_NMDS", scores_table_NMDS, envir = .GlobalEnv)



}