function solve()
    h, w, n = [parse(Int, x) for x in split(readline())]
    rset = Set{Int}()
    cset = Set{Int}()
    pos = Vector{Tuple{Int, Int}}()
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        push!(rset, a)
        push!(cset, b)
        push!(pos, (a, b))
    end
    rows = sort([r for r in rset])
    cols = sort([c for c in cset])

    for (row, col) in pos
        c = searchsortedfirst(rows, row)
        d = searchsortedfirst(cols, col)
        println(c, " ", d)
    end
end

solve()
