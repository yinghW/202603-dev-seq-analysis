
#202612
#import rds files from the measurements for the following up data analysis
# Data format: 
# ind: Individual (string, individual identifier used in raw data), 
# biorep: biological replicate (string, date hatched A /B).
# lm: landmark number (integer, the same order as the landmark in method)
# X: x coordinate (double, unit is in micron)
# Y: y coordinate (double, unit is in micron)
# plane: Plane (string, Pharyngeal plane, oral aboral plane, or tentacular plane)
# ver: version (string, version of set of the landmarks applied)
# file: original csv file name of the measurement (string)
# temp: temperature (integer, the culturing temperature of the animal)

# could added from the file name
# dph: day post hatching (day after hatched)

# it has been used in lm_to_datarfame.R

#add lm 10 at mouth of the oa plane
add_lm10 <- function(final_specs_list)
{
  for (id in names(final_specs_list)) {
    
    spec  <- final_specs_list[[id]]
    mat   <- spec$matrix
    plane <- spec$metadata$plane
    
    if (plane == "TA") {
      # 1. Identify the two points (assuming Row 1 and Row 2 are LM1 and LM2)
      p1 <- mat[1, ]
      p2 <- mat[2, ]
      
      # 2. Calculate the midpoint
      midpoint <- (p1 + p2) / 2
      
      # 3. Add it as a new row to the matrix
      # We add it to the bottom, or you could insert it specifically
      final_specs_list[[id]]$matrix <- rbind(mat, midpoint)
      
    }
  }
  
  return(final_specs_list)
}