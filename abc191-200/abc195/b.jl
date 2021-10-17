function solve()
    a, b, w = [parse(Int, x) for x in split(readline())]
    w = 1000w

    can = []
    for i=1:1000000
        if a*i ≤ w ≤ b*i
            push!(can, i)
        end
    end
    if length(can) == 0
        println("UNSATISFIABLE")
    else
        println(can[1], " " , can[end])
    end
end

solve()