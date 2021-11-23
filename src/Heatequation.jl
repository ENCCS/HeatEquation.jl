module Heatequation

using ProgressMeter

#include("config.jl")
include("io.jl")
include("setup.jl")
include("core.jl")
include("utilities.jl")

export Field, initialize, evolve!, run!

end # module
