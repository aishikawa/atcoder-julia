function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    cs = Array{Char, 2}(undef, H, W)
    for h=1:H
        cs[h, :] = collect(readline())
    end
    cs = cs .== '#'
    xs = sum(cs, dims=1)
    join(xs, " ")
end

println(solve())
