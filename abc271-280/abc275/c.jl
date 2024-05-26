function solve()
    ss = Vector{String}()
    for _=1:9
        push!(ss, readline())
    end

    function valid(x, y)
        1 ≤ x ≤ 9 && 1 ≤ y ≤ 9 && ss[x][y] == '#'
    end

    squares = Set{Set{Tuple{Int, Int}}}()

    for i=1:9, j=1:9, dx=-8:8, dy=-8:8
        if dx == 0 && dy == 0
            continue
        end
        i2, j2 = i + dx, j + dy
        i3, j3 = i2 - dy, j2 + dx
        i4, j4 = i3 - dx, j3 - dy

        if valid(i, j) && valid(i2, j2) && valid(i3, j3) && valid(i4, j4)
            push!(squares, Set([(i, j), (i2, j2), (i3, j3), (i4, j4)]))
        end
    end

    length(squares)
end

println(solve())
