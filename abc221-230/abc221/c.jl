function solve()
    n = readline()
    n = sort(collect(n))
    l = length(n)
    ans = 0
    for x=1:2^l-1
        a = ""
        b = ""
        for i=1:l
            e = 2^(i-1)
            if x & e == 0
                a = n[i] * a
            else
                b = n[i] * b
            end
        end
        if length(a) > 0 && length(b) > 0 && a[1] ≠ '0' && b[1] ≠ 0
            a = parse(Int, a)
            b = parse(Int, b)
            ans = max(ans, a*b)
        end
    end
    ans
end

println(solve())
