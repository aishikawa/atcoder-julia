function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    h = w = n
    ret = (n-2) * (n-2)
    a = ones(Int, n) * n
    b = ones(Int, n) * n
    for _=1:q
        t, x = [parse(Int, x) for x in split(readline())]
        if t == 1
            if x < w
                b[x:w-1] .= h
                w = x
            end
            ret -= b[x] - 2
        else
            if x < h
                a[x:h-1] .= w
                h = x
            end
            ret -= a[x] - 2
        end
    end
    ret
end

println(solve())
