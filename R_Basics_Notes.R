#comment

weight <- 55
weight <- 2.2*weight

class(colleges_df) # returns class 
typeof(colleges_df) # more detailed data type

is.data.frame(colleges_df) # checks 
as.array(colleges_df) # attempts to cast to another variable 

y == z # character "2" to number 2 returns true, we use %% for modulo
# & for and, | for or, ! for not

#Basic data structures: atomic Vector, list, matrix, dataframe

data.frame(id = letters[1:10], x= 1:10, y=11:20)
dat <- data.frame(id = letters[1:10], x=1:10, y=11:20)
dat

#attributes: names, dimnames, dim, class, attributes
#head(dat), dim(dat), nrow(dat), ncol(dat), str(dat), names(dat), na.omit(dat)
sapply(dat, class)
class(dat$id)

sapply(starwars, class)
view(starwars)

#addressing data: indexing/slicing, logical vectors, by name
starwars[1, 1] #row, col
starwars[, 2] #requesting all values in the row dimension 
starwars[,2:5] #colon enables specific rows/columns
starwars[c(1, 2, 5), 1:5] #non-sequential columns 

#colnames(starwars) gets col names, starwars$gender to retrieve
starwars$gender[1:5]

starwars[, c('gender', "name")]

#logical indexing: logical vectors only contain values true and false 
#run below code
x <- c(1, 2, 3, 4, 5, 6, 7, 8)
x < 10 # is x smaller than 10? 
x %in% 1:10

#insert the condition before the $ in df.column/row/whatever
print(starwars[starwars$species == "Human",]$name) 
starwars$species == "Human"

index <- starwars$species != "Human"
starwars[index, "name"]

plot(starwars[starwars$species == "Human",]$height)

#R markdown files: reproducible reports every time you knit 
#file, new file, r markdown

#like a jupyter notebook
#code is demarcated with three back ticks ``` on either side  ```
#look at the markdown example for more 










