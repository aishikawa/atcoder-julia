function rle(s::String)::Vector{Tuple{Char, Int}}
    ret = []
    c = s[1]
    l = 1

    for cc in s[2:end]
        if cc ≠ c
            push!(ret, (c, l))
            l = 1
        else
            l += 1
        end
        c = cc
    end
    push!(ret, (c, l))
    ret
end

function solve()
    s = readline()
    t = readline()
    s = rle(s)
    t = rle(t)

    if length(s) ≠ length(t)
        return "No"
    else
        for i in eachindex(s)
            if !(s[i][1] == t[i][1] && ( (s[i][2] == t[i][2]) || (s[i][2] ≥ 2 && s[i][2] ≤ t[i][2]) ))
                return "No"
            end
        end
    end
    "Yes"
end

println(solve())
