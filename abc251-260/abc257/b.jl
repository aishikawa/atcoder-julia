function solve()
    n, k, q = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    ls = [parse(Int, x) for x in split(readline())]

    for l in ls
        if (l < k && as[l+1] - as[l] > 1) || (l == k && as[l] < n)
            as[l] += 1
        end
    end

    join(as, " ")
end

println(solve())
