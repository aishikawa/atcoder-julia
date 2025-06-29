function solve()
    N, X = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    for a=0:100
        B = [A; a]
        s = sum(B) - minimum(B) - maximum(B)
        if s ≥ X
            return a
        end
    end
    -1
end

println(solve())
