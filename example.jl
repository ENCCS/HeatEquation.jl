using HeatEquation

ncols, nrows = 1000, 1000 
nsteps, image_interval = 500, 0

# initialize current and previous states to the same state
curr, prev = initialize(ncols, nrows)

visualize_field(curr)

finalfield, finaltemp = simulate!(curr prev, nsteps, image_interval)

visualize_field(curr)