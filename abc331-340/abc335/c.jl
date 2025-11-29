function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    d = [(i, 0) for i=1:N]
    for _=1:Q
        t, v = split(readline())
        if t == "1"
            (x, y) = d[1]
            newh = if v == "R"
                (x+1, y)
            elseif v == "L"
                (x-1, y)
            elseif v == "U"
                (x, y+1)
            elseif v == "D"
                (x, y-1)
            end
            d = pushfirst!(d, newh)
        else
            p = parse(Int, v)
            println("$(d[p][1]) $(d[p][2])")
        end
    end
end

solve()
