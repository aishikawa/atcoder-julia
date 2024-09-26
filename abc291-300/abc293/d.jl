using DataStructures

function solve()
    N, M = [parse(Int, x) for x in split(readline())]

    X = 0
    dj = IntDisjointSets(N)
    for i=1:M
        t = split(readline())
        A = parse(Int, t[1])
        C = parse(Int, t[3])
        if in_same_set(dj, A, C)
            X += 1
        else
            union!(dj, A, C)
        end
    end
    "$X $(N-M)"
end

println(solve())
