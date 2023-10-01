using testgit1
using Test

@testset "testgit1.jl" begin
    @test main() == 1
end
