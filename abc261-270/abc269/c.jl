function solve()
    n = parse(Int, readline())
    nb = string(n, base=2)
    base = Vector{Int}()
    b = 1
    for c in reverse(nb)
        if c == '1'
            push!(base, b)
        end
        b *= 2
    end

    for i=0:2^length(base)-1
        r = 0
        s = string(i, base=2)
        for (j, c) in enumerate(reverse(s))
            if c == '1'
                r += base[j]
            end
        end
        println(r)
    end
end

solve()
