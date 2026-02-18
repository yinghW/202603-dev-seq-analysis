# a set of functions that calculate the linear distance of measurement in *Mnemiopsis leidyi*'s TA

# argument: matrix that contain every landmark from each image
# return an array containing the measurement from each image

# TA axis (v.6)

# the pharynx length
PL_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[3, 1], mat[13, 1])
  y <- c(mat[3, 2], mat[13, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}

# the body length (mouth to statocysts)
BL_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[4, 1], mat[13, 1])
  y <- c(mat[4, 2], mat[13, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}

# the tentacle canal length
TCL_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[3, 1], mat[5, 1])
  y <- c(mat[3, 2], mat[5, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}

# the distance from tip of the lobe to mouth
LTM_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[6, 1], mat[13, 1])
  y <- c(mat[6, 2], mat[13, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}

# the tip of the lobe to the connecting point of ad-tentacular and paragastric canals around mouth (base of the lobe)
# "lobe width"
LL_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[6, 1], mat[7, 1])
  y <- c(mat[6, 2], mat[7, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}


# body width at TA plane
TABW_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[8, 1], mat[9, 1])
  y <- c(mat[8, 2], mat[9, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
  
}

# Adesophageal ctene row length at TA plane
AECL_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[11, 1], mat[12, 1])
  y <- c(mat[11, 2], mat[12, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
  
}

# Tentacular bulb length (TA)
TATB_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[5, 1], mat[10, 1])
  y <- c(mat[5, 2], mat[10, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
  
}

# calculate perpendicular distance of the point to the mouth-statocyst line
# then multiply by 2
# body width at TA plane
TABW_half_fun <- function(mat)
{
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[3, 1], mat[10, 1], mat[8,1])
  y <- c(mat[3, 2], mat[10, 2], mat[8,2])
  num <- abs((x[2] - x[1]) * (y[1] - y[3]) - (x[1] - x[3]) * (y[2] - y[1]))
  den <- sqrt((x[2] - x[1])^2 + (y[2] - y[1])^2)
  
  return( (num / den)*2)
}


