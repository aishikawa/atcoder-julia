function solve()
    M = 998244353
    N = parse(Int, readline())
    A = split(readline())
    l = [10^length(a) % M for a in A]
    for i=N-1:-1:1
        l[i] = (l[i] + l[i+1]) % M
    end
    A = [parse(Int, x) for x in A]
    ans = 0
    for i=1:N
        if i≠N
            ans = (ans + l[i+1]*A[i]) % M
        end
        ans = (ans + (i-1)*A[i]) % M
    end
    ans % M
end

println(solve())
