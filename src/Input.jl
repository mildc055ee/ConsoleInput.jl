module Input

export readInt

function readInt(io::IO=stdin, delimiter=" ")
    input = parse.(Int64, split(readline(io), delimiter))
    if length(input) == 1
        return input[1]
    else
        input
    end
end

function readString(io::IO=stdin, delimiter=" ")
    input = split(readline(io), delimiter)
    if length(input) == 1
        return input[1]
    else
        input
    end
end

end # module
