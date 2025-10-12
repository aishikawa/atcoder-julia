function solve()
    N = parse(Int, readline())
    S = Matrix{Char}(undef, N, N)
    for i=1:N
        S[i, :] = collect(readline())
    end
    t = [[j for j=1:N if S[i, j]=='o'] for i=1:N]
    column_sum =  [count(x->x=='o', S[:, j]) for j=1:N]

    ans = 0
    for i=1:N
        l = length(t[i]) - 1
        for j in t[i]
            ans += (column_sum[j] - 1) * l
        end
    end
    ans
end

println(solve())
