function solve()
    s = readline()
    t = readline()

    if s == t[1:end-1]
        "Yes"
    else
        "No"
    end
end

println(solve())
