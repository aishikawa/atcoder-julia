function solve()
    N = parse(Int, readline())
    S = zeros(Int, N)
    for i=1:N
        S[i] = count(c -> c == 'o', readline())
    end

    ans = sortperm(S, rev=true)
    
    join(ans, " ")
end

println(solve())
