function solve()
    ss = Vector{String}(undef, 10)
    for i=1:10
        ss[i] = readline()
    end
    a = b = c = d = 0
    for i=1:10
        if ss[i] ≠ ".........."
            c = findfirst('#', ss[i])
            d = findlast('#', ss[i])
            if a == 0
                a = i
            end
            b = i
        end
    end
    println("$a $b")
    println("$c $d")
end

solve()
