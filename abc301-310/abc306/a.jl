function solve()
    N = parse(Int, readline())
    S = collect(readline())
    ans = Vector{Char}(undef, 2N)
    for i=1:N
        ans[2i-1] = ans[2i] = S[i]
    end
    String(ans)
end

println(solve())
