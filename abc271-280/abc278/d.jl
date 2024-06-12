function solve()
    N = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    seq = Dict{Int, Int}()
    for (i, a) in enumerate(as)
        seq[i] = a
    end
    d = -1

    Q = parse(Int, readline())
    for _=1:Q
        q = [parse(Int, x) for x in split(readline())]
        if q[1] == 1
            d = q[2]
            seq = Dict{Int, Int}()
        elseif q[1] == 2
            if q[2] ∈ keys(seq)
                seq[q[2]] += q[3]
            else
                seq[q[2]] = d + q[3]
            end
        else
            if q[2] ∈ keys(seq)
                println(seq[q[2]])
            else
                println(d)
            end
        end
    end
end

solve()
