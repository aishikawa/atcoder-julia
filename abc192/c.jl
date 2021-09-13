function f(n)
    s = n |> string |> collect |> sort
    g1 = parse(Int, foldl(*, reverse(s)))
    g2 = parse(Int, foldl(*, s))
    g1 - g2
end

function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    for i=1:k
        n = f(n)
    end
    n
end

println(solve())