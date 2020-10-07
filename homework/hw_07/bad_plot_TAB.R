
library(ggplot2)

bad_plot <- read.csv("bad_plot.csv", header = TRUE)




a <- ggplot(data = bad_plot, aes(x = reorder(bad_plot$Species, bad_plot$Concentration), y = bad_plot$Concentration, fill = bad_plot$Contaminant)) + geom_bar(stat = "identity") + theme_dark() + coord_flip() + xlab("Species") + ylab("Concentration")
a + guides(fill = guide_legend(title = "Contaminant"))

a + theme(axis.text.y = element_text(face = "bold.italic", size = 6))
a + theme(axis.text.x = element_text(face = "bold.italic", size = 20))
