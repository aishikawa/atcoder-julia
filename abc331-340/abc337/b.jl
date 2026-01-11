function solve()
    S = readline()
    r = r"^A*B*C*$"
    isnothing(match(r, S)) ? "No" : "Yes"
end

println(solve())
