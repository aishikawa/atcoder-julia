function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    counter = Dict{Int, Int}();
    dict = Dict{Tuple{Int, Int}, Int}();

    for i=1:n
        if as[i] in keys(counter)
            counter[as[i]] += 1
        else
            counter[as[i]] = 1
        end
        dict[as[i], counter[as[i]]] = i
    end
    for _=1:q
        xk = Tuple([parse(Int, x) for x in split(readline())])
        if xk in keys(dict)
            println(dict[xk])
        else
            println(-1)
        end
    end
end

solve()
