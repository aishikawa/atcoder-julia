function solve()
    K, G, M = [parse(Int, x) for x in split(readline())]

    g = 0
    m = 0
    for _=1:K
        if g == G
            g = 0
        elseif m == 0
            m = M
        else
            if m ≤ G - g
                g += m
                m = 0
            else
                m -= (G-g)
                g = G
            end
        end
    end
    "$g $m"
end

println(solve())
