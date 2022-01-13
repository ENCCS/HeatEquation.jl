module Heatequation

using ProgressMeter

include("io.jl")
include("setup.jl")
include("core.jl")

export Field, simulate

end # module
