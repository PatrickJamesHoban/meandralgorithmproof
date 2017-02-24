

# heuristic - which point we choose next
# research Postgres gis extensions


# MATT BREAKOUT NOTES:
# draw a rectangle that has a start on one border and end on another border

# choose all points within the box.
  # this becomes our subset of locations we can travel too

# find the 3 closest points of interest to the User

# randomly choose one of those 3 points.

# find the next 3 closest points of interest
  # those points are chosen from a radius around the current point.
  # those points should be closer to the end point.
  # those points cannot be ones already visited

# repeat this process until the end point is one of the 3 points in range.


# SEED DATA:
# Set up data points that are actual locations on a map.
# Check output of code against what we're getting from google.
# 

