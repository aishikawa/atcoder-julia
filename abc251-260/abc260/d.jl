function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    ps = [parse(Int, x) for x in split(readline())]

    cards = Vector{Set{Int}}()
    table = Vector{Int}()
    ans = fill(-1, n)

    for (t, p) in enumerate(ps)
        i = searchsortedfirst(table, p)
        if i == length(table) + 1
            push!(table, p)
            push!(cards, Set{Int}(p))
        else
            table[i] = p
            push!(cards[i], p)
        end
        if length(cards[i]) ≥ k
            for c in cards[i]
                ans[c] = t
            end
            table = vcat(table[1:i-1], table[i+1:end])
            cards = vcat(cards[1:i-1], cards[i+1:end])
        end
    end
    
    for a in ans
        println(a)
    end
end

solve()
