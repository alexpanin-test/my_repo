args <- commandArgs(trailingOnly=TRUE) 

test_string <- args[[1]] 
cat(paste0('Test string is ', test_string, '.\n\n')) 

func <- function(test_string = c('x', 'y')){ 
test_string = match.arg(test_string) 
return(paste0('new_', test_string)) 
} 

new_string <- func(test_string) 
cat(paste0('New string is ', new_string, '.\n\n'))

