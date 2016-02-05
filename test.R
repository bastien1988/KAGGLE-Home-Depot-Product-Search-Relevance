# INITIALIZE THE VARIABLES
# ===============================================================================================
path <- "C:/kaggle/HomeDepot/"

# LOAD DATA
# ===============================================================================================
# Load Attributes of products
attr <- read.csv(paste(path,"attributes.csv", sep = ""))

attr$product_uid <- as.factor(attr$product_uid)
attr$name        <- as.factor(attr$name)
attr$value       <- as.character(attr$value)

# Load Product description
desc <- read.csv(paste(path,"product_descriptions.csv", sep = ""))

desc$product_uid         <- as.factor(desc$product_uid)
desc$product_description <- as.character(desc$product_description)

# Load Training data
train <- read.csv(paste(path,"train.csv", sep = ""))

train$product_title <- as.character(train$product_title)
train$search_term   <- as.character(train$search_term)

# TRAIN THE MODEL
# ===============================================================================================

# for(i in 1:nrow(train))
i             <- 1
# Decompose search terms
search_string <- train$search_term[i]
search_terms  <- unlist(strsplit(search_string, " "))

# Get product informations
p_id       <- train$product_uid[i]

p_name     <- train$product_title[i]

p_attr     <- attr[attr$product_uid == p_id, c("name", "value")]
p_attr     <- p_attr[!is.na(p_attr$name), ]

p_desc     <- desc$product_description[desc$product_uid == p_id]
p_desc     <- p_desc[!is.na(p_desc)]


# for(j in 1:length(search_terms))
  j <- 1
  grep(regex(search_terms[j]), p_name)
  
  
  
  
  
  
<<<<<<< HEAD
  
=======
  #hugo



>>>>>>> 1d9f0600a0c2a58529bc25aabfbf021e1b968f24
