using HeatEquation

ncols, nrows = 1000, 1000
nsteps = 500

# initialize current and previous states to the same state
curr, prev = initialize(ncols, nrows)

# visualize initial field
visualize(curr)

# simulate temperature evolution for nsteps
simulate!(curr, prev, nsteps)

# visualize final field
visualize(curr)
