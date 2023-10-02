using testgit1
using Test

@testset "testgit1.jl" begin
    @test rotz!(rand(2,2), 0.0) == [1.0 0.0; 0.0 1.0]
end
