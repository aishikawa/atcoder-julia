using DataStructures

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    ds = IntDisjointSets(N)
    ans = 0
    for _=1:M
        A, B = [parse(Int, x) for x in split(readline())]
        if in_same_set(ds, A, B)
            ans += 1
        else
            union!(ds, A, B)
        end
    end
    ans
end

println(solve())
