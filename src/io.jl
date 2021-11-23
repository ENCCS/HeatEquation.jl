
function write_field(curr, filename=:none)
    # call external pngwriter library 
    ccall((:save_png, "$(@__DIR__)/libpngwriter.so"), 
        Int64, 
        (Ptr{Cdouble}, Cint, Cint, Cstring, Cchar), 
        curr.data[2:curr.nx+1, 2:curr.ny+1], curr.nx, curr.ny, filename, 'F')
 
end


