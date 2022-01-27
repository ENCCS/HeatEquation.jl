module HeatEquation

using ProgressMeter
using Plots
using SharedArrays
using Distributed

include("setup.jl")
include("io.jl")
include("core.jl")

export Field, simulate!, initialize, visualize, average_temperature

end # module
