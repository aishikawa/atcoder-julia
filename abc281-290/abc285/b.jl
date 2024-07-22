function solve()
    N = parse(Int, readline())
    S = readline()

    for i=1:N-1
        l = 1
        while l+i ≤ N && S[l] ≠ S[l+i]
            l += 1
        end
        println(l-1)
    end
end

solve()
