module Input

export readInt

function readInt(io::IO=stdin)
    input = parse.(Int64, split(readline(io)))
    if length(input) == 1
        return input[1]
    else
        input
    end
end

end # module
