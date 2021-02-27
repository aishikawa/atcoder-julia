function manhattan(xs)
    sum([abs(x) for x in xs])
end

function euclidean(xs)
    √sum([x^2 for x in xs])
end

function chebyshev(xs)
    maximum([abs(x) for x in xs])
end

function solve()
    n = parse(Int, readline())
    xs = [parse(Int, x) for x in split(readline())]

    println(manhattan(xs))
    println(euclidean(xs))
    println(chebyshev(xs))
end

solve()
