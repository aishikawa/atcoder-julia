function solve()
    L, N1, N2 = [parse(Int, x) for x in split(readline())]
    a = zeros(Int, N1, 2)
    b = zeros(Int, N2, 2)
    for i=1:N1
        a[i, :] = [parse(Int, x) for x in split(readline())]
    end
    for i=1:N2
        b[i, :] = [parse(Int, x) for x in split(readline())]
    end
    a[:, 2] = cumsum(a[:, 2])
    b[:, 2] = cumsum(b[:, 2])

    ans = 0
    c = 0
    i1 = i2 = 1
    while i1 ≤ N1 || i2 ≤ N2 
        if a[i1, 2] < b[i2, 2]
            if a[i1, 1] == b[i2, 1]
                ans += a[i1, 2] - c
            end
            c = a[i1, 2]
            i1 += 1
        elseif a[i1, 2] > b[i2, 2]
            if a[i1, 1] == b[i2, 1]
                ans += b[i2, 2] - c
            end
            c = b[i2, 2]
            i2 += 1
        else
            if a[i1, 1] == b[i2, 1]
                ans += a[i1, 2] - c
            end
            c = a[i1, 2]
            i1 += 1
            i2 += 1
        end
    end

    ans
end

println(solve())
