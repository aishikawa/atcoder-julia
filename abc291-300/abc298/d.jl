function solve()
    m = 998244353
    inv10 = invmod(10, m)
    v = 1
    S = [1]
    b = 1
    Q = parse(Int, readline())
    for _=1:Q
        query = [parse(Int, x) for x in split(readline())]
        if query[1] == 1
            v = mod(10v + query[2], m)
            b = mod(10b, m)
            push!(S, query[2])
        elseif query[1] == 2
            s = popfirst!(S)
            v = mod(v - mod(s*b, m), m)
            b = mod(b * inv10, m)
        else
            println(v)
        end
    end
end

solve()
