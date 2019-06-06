using Test, Input

origin_stdin = stdin
test_in = open("./test.txt", "r")
redirect_stdin(test_in)

@testset "DlmType" begin
    @test isa(' ', Input.DlmType)
    @test isa("abc", Input.DlmType)
    @test isa(r"^\s*(?:#|$)", Input.DlmType)

    function dlm()::String
            "false"
    end
    @test isa(dlm(), Input.DlmType)
end

@testset "readInt" begin
    @test Input.readInt(test_in) == 1
    @test Input.readInt(test_in) == [1, 2, 3, 4, 5]
    @test Input.readInt(test_in, ",") == [6, 7, 8, 9, 10]
end

@testset "readString" begin
    @test Input.readString(test_in) == "Lorem"
    @test Input.readString(test_in) == ["Lorem", "ipsum", "es", "simplemente"]
    @test Input.readString(test_in, ";") == ["consectetur", "adipiscing", "elit"]
end

close(test_in)
redirect_stdin(origin_stdin)
