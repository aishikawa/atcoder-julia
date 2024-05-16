function solve()
    H, W, rs, cs = [parse(Int, x) for x in split(readline())]
    N = parse(Int, readline())
    rows = Dict{Int, Vector{Int}}()
    cols = Dict{Int, Vector{Int}}()

    for _=1:N
        r, c = [parse(Int, x) for x in split(readline())]
        if r in keys(rows)
            push!(rows[r], c)
        else
            rows[r] = [c]
        end
        if c in keys(cols)
            push!(cols[c], r)
        else
            cols[c] = [r]
        end
    end

    for vec in values(rows)
        push!(vec, 0)
        push!(vec, W+1)
        sort!(vec)
    end
    for vec in values(cols)
        push!(vec, 0)
        push!(vec, H+1)
        sort!(vec)
    end

    Q = parse(Int, readline())
    for _=1:Q
        d, l = split(readline())
        l = parse(Int, l)
        if d == "L"
            if rs in keys(rows)
                i = searchsortedlast(rows[rs], cs)
                cs = max(rows[rs][i] + 1, cs - l)
            else
                cs = max(1, cs - l)
            end
        elseif d == "R"
            if rs in keys(rows)
                i = searchsortedfirst(rows[rs], cs)
                cs = min(rows[rs][i] - 1, cs + l)
            else
                cs = min(W, cs + l)
            end
        elseif d == "U"
            if cs in keys(cols)
                i = searchsortedlast(cols[cs], rs)
                rs = max(cols[cs][i] + 1, rs - l)
            else
                rs = max(1, rs - l)
            end
        elseif d == "D"
            if cs in keys(cols)
                i = searchsortedfirst(cols[cs], rs)
                rs = min(cols[cs][i] - 1, rs + l)
            else
                rs = min(H, rs + l)
            end
        end
        println("$rs $cs")
    end
end

solve()
