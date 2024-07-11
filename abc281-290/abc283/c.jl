function solve()
    S = collect(readline())
    ans = 0
    i = 1
    while i ≤ length(S)
        ans += 1
        if i < length(S) && S[i] == '0' && S[i+1] == '0'
            i += 2
        else
            i += 1
        end
    end
    ans
end

println(solve())
