function solve()
    S = readline()
    x = parse(Int, S[4:end])
    1 ≤ x ≤ 349 && x ≠ 316 ? "Yes" : "No"
end

println(solve())
