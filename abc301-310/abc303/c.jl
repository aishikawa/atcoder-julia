function solve()
    N, M, H, K = [parse(Int, x) for x in split(readline())]
    S = collect(readline())
    items = Set{Tuple{Int, Int}}()
    for _=1:M
        x, y = [parse(Int, x) for x in split(readline())]
        push!(items, (x, y))
    end

    curx = cury = 0
    health = H
    for c in S
        if c == 'R'
            curx += 1
        elseif c == 'L'
            curx -= 1
        elseif c == 'U'
            cury += 1
        else
            cury -= 1
        end
        health -= 1
        if health < 0
            return "No"
        end
        if (curx, cury) ∈ items && health < K
            delete!(items, (curx, cury))
            health = K
        end
    end
    "Yes"
end

println(solve())
