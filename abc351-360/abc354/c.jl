function solve()
    N = parse(Int, readline())
    cards = Vector{Tuple{Int, Int, Int}}(undef, N)
    for i=1:N
        a, c = parse.(Int, split(readline()))
        cards[i] = (c, a, i)
    end
    sort!(cards)
    ans = []
    v = 0
    for card in cards
        c, a, i = card
        if a > v
            push!(ans, i)
            v = a
        end
    end
    sort!(ans)

    println(length(ans))
    println(join(ans, " "))
end

solve()
