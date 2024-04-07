function solve()
    s = readline()
    t = readline()

    len_s = length(s)
    len_t = length(t)

    if len_s ≤ len_t && s == t[1:len_s]
        "Yes"
    else
        "No"
    end
end

println(solve())
