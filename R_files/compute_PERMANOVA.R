#' compute PERMANVOA function
#'
#'Function is a component of the statistical analysis portion of the package. Compute permutational
#'multivariate analysis of variance (PERMANOVA) analysis to identify how much variation in community
#'composition (i.e., how much dissimilarity) is explained by each predictor.
#'
#'@name compute_PERMANOVA
#'
#' @export

compute_PERMANOVA <- function (ASV_df, grouping_factor, data_df, method_distance) {

  factor = data_df[,grouping_factor]

  PERMANOVA <- adonis (ASV_df ~ factor, data= data_df, permutations = 9999, method = {{method_distance}}, na.rm=T)

  return (PERMANOVA)
}
