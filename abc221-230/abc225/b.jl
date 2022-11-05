function solve()
    n = parse(Int, readline())
    dim = zeros(Int, n)
    for _=1:n-1
        a, b = [parse(Int, x) for x in split(readline())]
        dim[a] += 1
        dim[b] += 1
    end
    maximum(dim) == n-1 ? "Yes" : "No"
end

println(solve())
