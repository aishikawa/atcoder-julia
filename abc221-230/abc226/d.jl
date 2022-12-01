function solve()
    n = parse(Int, readline())
    coords = zeros(Int, (n, 2))
    for i=1:n
        coords[i, :] = [parse(Int, x) for x in split(readline())]
    end
    ms = Set{Tuple{Int, Int}}()
    for i=1:(n-1), j=(i+1):n
        xdiff = coords[j, 1] - coords[i, 1]
        ydiff = coords[j, 2] - coords[i, 2]
        d = gcd(xdiff, ydiff)
        x = xdiff ÷ d
        y = ydiff ÷ d
        push!(ms, (x, y))
        push!(ms, (-x, -y))
    end
    length(ms)
end

println(solve())
