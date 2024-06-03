function solve()
    n = parse(Int, readline())

    cards = Set{String}()
    first = Set{Char}(['H', 'D', 'C', 'S'])
    second = Set{Char}(['A', '2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K'])
    for _=1:n
        s = readline()
        if s[1] ∉ first || s[2] ∉ second
            return "No"
        end
        push!(cards, s)
    end

    length(cards) == n ? "Yes" : "No"
end

println(solve())
