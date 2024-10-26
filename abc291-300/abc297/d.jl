function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    if A == B
        return 0
    end

    ans = 0
    if B > A
        A, B = B, A
    end

    while B ≠ 0
        if A > B
            d, r = divrem(A, B)
            ans += d
            A, B = B, r
        end
    end
    
    ans - 1
end

println(solve())
