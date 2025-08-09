function solve()
    N = parse(Int, readline())
    S = collect(readline())
    
    sort!(S)

    ans = 0
    i = 0
    while i^2 ≤ 10^N
        t = collect(string(i^2))
        l = length(t)
        resize!(t, N)
        t[l+1:N] .= '0'
        sort!(t)
        if t == S
            ans += 1
        end
        i += 1
    end
    ans
end

println(solve())
