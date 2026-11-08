function solve()
    S = readline()
    findfirst('R', S)  < findfirst('M', S) ? "Yes" : "No"
end

println(solve())
