##Urine Analysis
library(boot)
library(markdown)
library(DT)
urinea<-urine[,c(4,5)]
## order the data according to x-axis to get proper line plot
urinea<-urinea[order(urinea$osmo),]

fluidPage(    
        # Give the page a title
        titlePanel("Urine Analysis"),
        
        p("This app compares the osmolarity (osmo) of urine with the conductivity (cond).",
          "Osmolarity is proportional to the concentration of molecules in a solution",
          "and conductivity is proportional to the concentration of charged ions in the solution.",
          "You can select the type of plot: scatterplot or line plot."),
        
# Generate a row with a sidebar
sidebarLayout(
        # Define the sidebar with one input       
                sidebarPanel(
                            radioButtons("plotType", "Plot type",
                                         c("Scatter"="p", "Line"='l')),
                helpText("By L.Sluyser. Urine Analysis Data from R package boot")
                ),            
                mainPanel(
                                    plotOutput("urinePlot")
                            )
        )          
)
           
