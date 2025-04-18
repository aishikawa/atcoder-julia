function solve()
    S = collect(readline())
    String([c for c in S if c ∉ ['a', 'e', 'i', 'o', 'u']])
end

println(solve())
