module ConsoleInput

export readInt

DlmType = Union{
    AbstractString,
    AbstractChar,
    Regex
}

function readInt(io::IO=stdin, delimiter::DlmType=" ")
    input = parse.(Int64, split(readline(io), delimiter))
    if length(input) == 1
        return input[1]
    else
        input
    end
end

function readString(io::IO=stdin, delimiter::DlmType=" ")
    input = split(readline(io), delimiter)
    if length(input) == 1
        return input[1]
    else
        input
    end
end

function readGeneral(type, io::IO=stdin, delimiter::DlmType=" ")
    input = parse.(type, split(readline(io), delimiter))
    if length(input) == 1
        return input[1]
    else
        input
    end
end

end # module
