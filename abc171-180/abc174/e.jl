function can_cut(c, k, as)
    sum([ceil(Int, a/c) - 1 for a in as]) ≤ k
end


function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    lb, ub = 0, maximum(as)
    while lb + 1 < ub
        c = ceil(Int, (ub + lb) / 2)
        if can_cut(c, k, as)
            ub = c
        else
            lb = c
        end
    end
    ceil(Int, ub)
end

println(solve())
