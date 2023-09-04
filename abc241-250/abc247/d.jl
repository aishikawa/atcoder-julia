using DataStructures

function solve()
    q = parse(Int, readline())
    cylinder = Deque{Tuple{Int, Int}}()
    for _=1:q
        query = [parse(Int, x) for x in split(readline())]
        if query[1] == 1
            push!(cylinder, (query[2], query[3]))
        else
            n = 0
            y = 0
            while n < query[2]
                x, c = popfirst!(cylinder)
                if n + c > query[2]
                    nn = query[2] - n
                    y += nn * x
                    n += nn
                    pushfirst!(cylinder, (x, c - nn))
                else
                    y += c*x
                    n += c
                end
            end
            println(y)
        end
    end
end

solve()
