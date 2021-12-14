#'Function is a component of the data visualization portion of the package. Uses ggplot package to
#'plot the mean relative abundances of taxonomic family for each island. The y-axis is the mean
#'abundance and the x-axis is the island where the sample was collected. position="fill" makes all
#'the bars the same height for easier comparison of proportions across groups. Taxonomic barplot
#'can be computed for any factor (e.g. depth instead of island) or for any taxonomic rank (e.g.
#'order instead of family).
#'
#'@name plot_taxonomic_barplot
#'
#' @export

plot_taxonomic_barplot <- function (barplot_data_df, color_palette, taxa_name, factor) {

  taxonomic_barplot <-ggplot(barplot_data_df, aes (fill = reorder(.data[[taxa_name]], mean_abundance_ASV_group), y= mean_abundance_ASV_group, x= .data[[factor]]))+

    geom_bar (position="fill",  stat= "identity") + theme_bw() +

    scale_fill_manual(values=color_palette)

  taxonomic_barplot

}
