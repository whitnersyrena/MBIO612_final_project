#' Plot NMDS
#'
#'@name plot_NMDS
#'
#' @export

plot_NMDS <- function (scores_table_meta_data_df, factor) {

  grouping_factor = scores_table_meta_data_df[,factor]

  NMDS <- ggplot(scores_table_meta_data_df)+
    geom_point(data =scores_table_meta_data_df, aes(x=NMDS1, y= NMDS2, shape=factor(grouping_factor), colour=factor(grouping_factor),fill=factor(grouping_factor)),size=3)+
    stat_ellipse(geom = "polygon",aes(x=NMDS1, y=NMDS2, color= factor(grouping_factor), fill =factor(grouping_factor)), alpha=0.2, level=0.7)+
    theme_bw()+
    theme(panel.grid.major=element_line(colour="white"), panel.grid.minor=element_line(colour="white"), strip.background = element_rect(fill="white"))

  NMDS

}
