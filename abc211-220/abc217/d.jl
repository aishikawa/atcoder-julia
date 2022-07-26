function solve()
    l, q = [parse(Int, x) for x in split(readline())]
    edges = [0, l]
    for _=1:q
        c, x = [parse(Int, x) for x in split(readline())]
        if c == 1
            i = searchsortedfirst(edges, x)
            insert!(edges, i, x)
        elseif c == 2
            a = searchsorted(edges, x)
            println(edges[a.start] - edges[a.stop])
        end
    end
end

solve()
