using HeatEquation
using Test

@testset begin
    
    ncols, nrows = 1000, 1000
    nsteps = 500

    curr, prev = initialize(ncols, nrows)
    # initial average temperature
    @test average_temperature(curr) ≈ 59.76482

    # run simulation
    simulate!(curr, prev, nsteps)

    # final average temperature
    @test average_temperature(curr) ≈ 58.80755
end