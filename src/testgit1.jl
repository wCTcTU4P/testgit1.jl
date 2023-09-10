module testgit1
	using PrecompileTools, GLMakie, LinearAlgebra
	export plotstuff, main, rotz!
	include("testgitcode.jl")
	@compile_workload begin
		main()
	end
end