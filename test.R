# Initialize variables
path <- "C:/kaggle/HomeDepot/"

# Load Attributes of products
attr <- read.csv(paste(path,"attributes.csv", sep = ""))

attr$product_uid <- as.factor(attr$product_uid)
attr$name        <- as.factor(attr$name)
attr$value       <- as.character(attr$value)

str(attr)
summary(attr)

length(levels(attr$name))
length(levels(attr$product_uid))

# Load Product description
prod_desc <- read.csv(paste(path,"product_descriptions.csv", sep = ""))

prod_desc$product_uid         <- as.factor(prod_desc$product_uid)
prod_desc$product_description <- as.character(prod_desc$product_description)

# Load Training data
train <- read.csv(paste(path,"train.csv", sep = ""))

train$product_title <- as.character(train$product_title)
train$search_term   <- as.character(train$search_term)

# Start the analysis

# for(i in 1:nrow(train))
i             <- 1
search_string <- train$search_term[i]
p_id          <- train$product_uid[i]
name          <- train$product_title[i]
attr$value[]

search_terms <- unlist(strsplit(search_string, " "))

# for(j in 1:length(search_terms))
  j <- 1
  grep(search_terms[j], name)
  
  
