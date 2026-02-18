# a set of functions that calculate the linear distance of measurement in *Mnemiopsis leidyi*'s OA

# argument: a 2D matrix that contain every landmark from an image
# return a double value from the calculation

# OA axis (v.5)

# Tentacle bulb length
TBL_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
    x <- c(mat[2, 1], mat[3, 1])
    y <- c(mat[2, 2], mat[3, 2])
    dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)

  return(dist)
}

# pharynx width (since the landmark is only half of the size, the result multiply by 2)
PW_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[1, 1], mat[8, 1])
  y <- c(mat[1, 2], mat[8, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)*2
  
  return(dist)
}

# the ad-tentacular adradial canal length
ATAC_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[4, 1], mat[5, 1])
  y <- c(mat[4, 2], mat[5, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}

# the ad-esophageal adradial canal length
AEAC_fun <- function(mat)
{
  dist = 0
  # calculate the distance between each landmark that are included in the measurement 
  x <- c(mat[6, 1], mat[7, 1])
  y <- c(mat[6, 2], mat[7, 2])
  dist = sqrt((x[1]-x[2])^2 + (y[1]-y[2])^2)
  
  return(dist)
}
