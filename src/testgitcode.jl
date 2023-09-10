using GLMakie, LinearAlgebra

@inline function rotz!(rotzout::Matrix{Float64}, t::Float64)
    rotzout[1, 1] = cos(t)
    rotzout[2, 1] = sin(t)
    rotzout[1, 2] = -sin(t)
    rotzout[2, 2] = cos(t)
    return rotzout
end

function plotstuff(xycoord::Matrix{Float64})
    baserot = zeros(Float64, 2, 2)
    fig = lines(xycoord)
    rots = Vector{Float64}(0:pi/6:(2*pi-pi/6))
    for i in eachindex(rots)
        xycoordtemp = rotz!(baserot, rots[i]) * xycoord
        lines!(xycoordtemp)
    end
    display(fig)
end

function main()
    basecoord = rand(2, 7)
    plotstuff(basecoord)
end

main()