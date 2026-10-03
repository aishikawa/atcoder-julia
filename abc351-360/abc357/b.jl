function solve()
    S = readline()
    l = sum(islowercase(c) for c in S)
    if l > length(S)/2 
        lowercase(S)
    else
        uppercase(S)
    end
end

println(solve())
