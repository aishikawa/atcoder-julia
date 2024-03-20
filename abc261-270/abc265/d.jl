function solve()
    N, P, Q, R = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    indexes = [1, 2, 3, 4]
    vals = [as[1], as[2], as[3]]

    function addindex(i)
        while true
            if i < 4
                vals[i] -= as[indexes[i]]
            end
            if i > 1 && indexes[i] ≤ N
                vals[i-1] += as[indexes[i]]
            end
            indexes[i] += 1
            i += 1
            if i > 4 || indexes[i-1] < indexes[i]
                break
            end
        end
    end

    while indexes[4] ≤ N+1
        if vals[1] < P
            addindex(2)
        elseif vals[1] == P
            if vals[2] < Q
                addindex(3)
            elseif vals[2] == Q
                if vals[3] < R
                    addindex(4)
                elseif vals[3] == R
                    return "Yes"
                else
                    addindex(3)
                end
            else
                addindex(2)
            end
        else
            addindex(1)
        end
    end
    "No"
end

println(solve())
