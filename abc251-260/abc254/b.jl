function solve()
    n = parse(Int, readline())
    a = zeros(Int, (n,n))

    for i=1:n
        for j=1:i
            if j == 1 || j == i
                a[i, j] = 1
            else
                a[i, j] = a[i-1, j-1] + a[i-1, j]
            end
        end
    end

    for i=1:n
        println(join(a[i, 1:i], " "))
    end
end

solve()
