module Heatequation

using ProgressMeter

include("io.jl")
include("setup.jl")
include("core.jl")
include("utilities.jl")

export Field, simulate

end # module
