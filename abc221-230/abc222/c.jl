function win(s, t)
    if s == t
        (0, 0)
    elseif (s == 'G' && t == 'C') || (s == 'C' && t == 'P') || (s == 'P' && t == 'G')
        (-1, 0)
    else
        (0, -1)
    end
end

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = fill('.', 2n, m)
    for i=1:2n
        as[i, :] = collect(readline())
    end
    rank = [(0, i) for i=1:2n]
    for r=1:m
        nextrank = []
        for k=1:n
            result = win(as[rank[2k-1][2], r], as[rank[2k][2], r])
            push!(nextrank, (rank[2k-1][1]+result[1], rank[2k-1][2]))
            push!(nextrank, (rank[2k][1]+result[2], rank[2k][2]))
        end
        rank = sort(nextrank)
    end
    for i=1:2n
        println(rank[i][2])
    end
end

solve()
