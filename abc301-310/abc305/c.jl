function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    grid = Array{Char}(undef, H, W)
    min_i = min_j = 1000
    max_i = max_j = 0
    for i=1:H
        grid[i, :]=collect(readline())
        f = findfirst(x -> x=='#', grid[i, :])
        l = findlast(x -> x=='#', grid[i, :])
        if !isnothing(f)
            min_i = min(min_i, i)
            max_i = max(max_i, i)
            min_j = min(min_j, f)
            max_j = max(max_j, l)
        end
    end

    c = findfirst(x -> x=='.', grid[min_i:max_i, min_j:max_j])
    "$(c[1]+min_i-1) $(c[2]+min_j-1)"
end

println(solve())
