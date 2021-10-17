function solve()
    n, m, x = [parse(Int, x) for x in split(readline())]
    c = zeros(Int, n)
    a = zeros(Int, n, m)
    for i=1:n
        l = [parse(Int, x) for x in split(readline())]
        c[i] = l[1]
        a[i, :] = l[2:end]
    end

    min_p = sum(c) + 1
    for v=0:2^n-1
        p = 0
        r = zeros(Int, m)
        for i=0:n-1
            if v & (1 << i) != 0
                p += c[i+1]
                r += a[i+1, :]
            end
        end
        if minimum(r) >= x
            min_p = min(min_p, p)
        end
    end
    min_p > sum(c) ? -1 : min_p
end

println(solve())
