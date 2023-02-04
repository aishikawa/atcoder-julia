function diff(a::Char, b::Char)::Int
    b-a ≥ 0 ? b-a : b-a+26
end

function solve()
    s = readline()
    t = readline()

    k = diff(s[1], t[1])
    for i=eachindex(s)
        if diff(s[i], t[i]) ≠ k
            return "No"
        end
    end
    "Yes"
end

println(solve())
