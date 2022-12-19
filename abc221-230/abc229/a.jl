function solve()
    s1 = readline()
    s2 = readline()
    if (s1 == "#." && s2 == ".#") || (s2 == "#." && s1 == ".#")
        "No"
    else
        "Yes"
    end
end

println(solve())
