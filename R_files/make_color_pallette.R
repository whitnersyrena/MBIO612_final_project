#' Make and extend color palette for graph
#'
#' @name make_color_palette
#'
#' @export

make_color_palette <- function (number_palette, number_taxa) {

  color_barplot <- brewer.pal(number_palette, "Paired")

  color_barplot <-  colorRampPalette(color_barplot)(number_taxa)

  assign("color_barplot", color_barplot, envir = .GlobalEnv)

}
