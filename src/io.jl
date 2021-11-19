
function write_field(curr, timestep, filename=:none)
    #colormap = cycle_cmap(:inferno, 3)
    background_color = :white

    plot = heatmap(
        curr.data,
        colorbar = :none,
        #color = colormap,
        axis = false,
#        size = (size(img)[2], size(img)[1]),
        grid = false,
        framestyle = :none,
        background_color = background_color
    )

    if filename != :none
        savefig(filename)
    end

end


