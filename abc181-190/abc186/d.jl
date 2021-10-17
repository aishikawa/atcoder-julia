using LinearAlgebra

function solve()
    n = parse(Int, readline())
    a = [parse(Int, x) for x in split(readline())]

    sort!(a, rev=true)

    c = zeros(Int, n)
    for i=1:n
        c[i] = n + 1 - 2i
    end

    a⋅c
end

println(solve())
