using Test, Input

origin_stdin = stdin
test_in = open("./test.txt", "r")
redirect_stdin(test_in)

@testset "readInt" begin
    @test Input.readInt(test_in) == 1
    @test Input.readInt(test_in) == [1, 2, 3, 4, 5]
end

@testset "readString" begin
    @test Input.readString(test_in) == "Lorem"
    @test Input.readString(test_in) == ["Lorem", "ipsum", "es", "simplemente"]
end

close(test_in)
redirect_stdin(origin_stdin)
