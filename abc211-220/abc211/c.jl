function solve()
    m = 10^9+7
    s = readline()
    n = length(s)
    a = zeros(Int, (8, n))
    for j=1:n
        if s[j] == 'c'
            a[1, j] = 1
        end
    end
    for i=2:8
        b = 0
        for j=1:n
            b += a[i-1, j]
            b %= m
            if s[j] == "chokudai"[i]
                a[i, j] = b
            end
        end
    end
    sum(a[8,:]) % m
end

println(solve())
