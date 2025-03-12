function solve()
    S = readline()
    d = Set(["ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"])
    S ∈ d ? "Yes" : "No"
end

println(solve())
