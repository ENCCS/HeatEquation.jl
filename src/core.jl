
function evolve!(curr, prev, a, dt)
    for j = 2:curr.ny+1
        for i = 2:curr.nx+1
            xderiv = (prev.data[i-1, j] - 2.0 * prev.data[i, j] + prev.data[i+1, j]) / curr.dx^2
            yderiv = (prev.data[i, j-1] - 2.0 * prev.data[i, j] + prev.data[i, j+1]) / curr.dy^2
            curr.data[i, j] = prev.data[i, j] + a * dt * (xderiv + yderiv)
        end 
    end
end


function run!(ncols, nrows, nsteps, image_interval)

    current, previous = initialize(ncols, nrows)

    # print initial average temperature
    average = sum(current.data[2:current.nx+1, 2:current.ny+1])
    average = average / (current.nx * current.ny)
    println("Average temperature at start: $average")

    # Diffusion constant
    a = 0.5
    # Largest stable time step
    dt = current.dx^2 * current.dy^2 / (2.0 * a * (current.dx^2 + current.dy^2))

    p = Progress(nsteps)

    for i = 1:nsteps
        evolve!(current, previous, a, dt)
        if i % image_interval == 0
            write_field(current, "heat_$i.png")
        end

        # swap current and previous fields
        tmp = current.data
        current.data = previous.data
        previous.data = tmp

        next!(p)
    end 

    # print final average temperature
    average = sum(current.data[2:current.nx+1, 2:current.ny+1])
    average = average / (current.nx * current.ny)
    println("Average temperature at end: $average")
end

