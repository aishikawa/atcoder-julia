function solve()
    S = readline()
    r = r"^[A-Z][a-z]*$"
    isnothing(match(r, S)) ? "No" : "Yes"
end

println(solve())
