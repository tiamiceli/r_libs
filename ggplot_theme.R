require(ggplot2)
require(RColorBrewer)
#install.packages("viridis")
require(viridis)
require(grid)
clean_theme <- function() {
    
    # Generate the colors for the chart procedurally with RColorBrewer
    palette <- brewer.pal("Greys", n=9)
    color.background = "white"
    color.grid.major = palette[4]
    color.axis.text = palette[9]
    color.axis.title = palette[9]
    color.title = palette[9]
    
    # Begin construction of chart
    theme_bw(base_size=9) +
        
        # Set the entire chart region to white color
        theme(panel.background=element_rect(fill=color.background, color=color.background)) +
        theme(plot.background=element_rect(fill=color.background, color=color.background)) +
        theme(panel.border=element_rect(color=color.background)) +
        
        # Format the grid
        #theme(panel.grid.major=element_line(color=color.grid.major,size=.5)) +
        theme(panel.grid.major=element_blank()) +
        theme(panel.grid.minor=element_blank()) +
        #theme(axis.ticks=element_blank()) +
        
        # Format the legend, but hide by default
        theme(legend.position="right") +
        theme(legend.background = element_rect(fill=color.background)) +
        theme(legend.text = element_text(size=11,color=color.axis.title)) +
        theme(legend.title=element_blank()) +
        
        # Set title and axis labels, and format these and tick marks
        theme(plot.title=element_text(color=color.title, size=18, vjust=1.25)) +
        theme(axis.text.x=element_text(size=12,color=color.axis.text)) +
        theme(axis.text.y=element_text(size=12,color=color.axis.text)) +
        theme(axis.title.x=element_text(size=15,color=color.axis.title, vjust=0)) +
        theme(axis.title.y=element_text(size=15,color=color.axis.title, vjust=1.25)) +
        
        # Plot margins
        theme(plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm"))
}