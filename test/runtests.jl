using Test, Input

origin_stdin = stdin
test_in = open("./test.txt", "r")
redirect_stdin(test_in)

@testset "readInt" begin
    @test Input.readInt(test_in) == 1
    @test Input.readInt(test_in) == [1, 2, 3, 4, 5]
end

close(test_in)
redirect_stdin(origin_stdin)
