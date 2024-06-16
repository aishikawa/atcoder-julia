function solve()
    s = readline()
    t = readline()

    isnothing(findfirst(t, s)) ? "No" : "Yes"
end

println(solve())
