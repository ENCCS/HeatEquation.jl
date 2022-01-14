using HeatEquation

ncols, nrows = 1000, 1000 
nsteps, image_interval = 500, 0

# initialize current and previous states to the same state
current, previous = initialize(ncols, nrows)

simulate!(current, previous, nsteps, image_interval)

