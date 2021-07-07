### Useful functions


#@ data  :is the data set we are using to plot
#@ column: comparison column with target variable
#@ str col: String value of heading
#@ strTarget:String value of target

library(ggplot2)
library(scales)

printggPlot2 <-function(data,column,target,strTarget,strCol, axisLabel = "H"){

    title<-paste(strTarget," Vs ",strCol,sep=" ")
    data <- data[order(column),] 
    
    if (axisLabel == "V") {
    
        ggplot(data, aes(x = as.factor(column),fill=factor(target))) +
          geom_bar(aes(y = (..count..)/sum(..count..))) +
          geom_text(aes(y = ((..count..)/sum(..count..)), label = scales::percent((..count..)/sum(..count..))), 
                    stat = "count", position=position_stack(vjust=0.5)) +
          scale_y_continuous(labels = percent) +
          labs(title = title, y = strTarget, x = strCol) +
          theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))
    }
    else {
          ggplot(data, aes(x = as.factor(column),fill=factor(target))) +
          geom_bar(aes(y = (..count..)/sum(..count..))) +
          geom_text(aes(y = ((..count..)/sum(..count..)), label = scales::percent((..count..)/sum(..count..))), 
                    stat = "count", position=position_stack(vjust=0.5)) +
          scale_y_continuous(labels = percent) +
          labs(title = title, y = strTarget, x = strCol) + 
          theme(axis.text.x=element_text(angle=30,hjust=1,vjust=0.5))        
    }
}
ID <- seq(1:177)
Age <- sample(c("0-15", "16-29", "30-44", "45-64", "65+"), 177, replace = TRUE)
Sex <- sample(c("Male", "Female"), 177, replace = TRUE)
Country <- sample(c("England", "Wales", "Scotland", "N. Ireland"), 177, replace = TRUE)
Health <- sample(c("Poor", "Average", "Good"), 177, replace = TRUE)
Survey <- data.frame(Age, Sex, Country, Health)
head(Survey)

printggPlot2(Survey,Age,Health,'Health','Age','V') # Vertical X-Axis Labels



