function solve()
    s, t, x = [parse(Int, x) for x in split(readline())]
    (s < t && s ≤ x < t) || (t < s && (s ≤ x || x < t)) ? "Yes" : "No"
end

println(solve())
