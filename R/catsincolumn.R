
catsincols <- function(mydata, colhasheader, colhasvalue, catcol="category"){
  if(!require(tidyr)){install.packages("tidyr")}
  orignames <- names(mydata)
  newnames <- c(orignames, catcol)
  for(i in 1:nrow(mydata)){
   mydata$newcat[i] <- ifelse(is.na(mydata[[colhasvalue]][i]), mydata[[colhasheader]][i], NA)
  }
  mydata <- mydata %>%
    fill(newcat)
  names(mydata) <- newnames
  return(mydata)
}




