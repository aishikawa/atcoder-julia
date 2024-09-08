function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    cards = zeros(Int, N)
    for _=1:Q
        q, x = [parse(Int, x) for x in split(readline())]
        if q == 3
            println(cards[x] ≥ 2 ? "Yes" : "No")
        else
            cards[x] += q
        end
    end
end

solve()
