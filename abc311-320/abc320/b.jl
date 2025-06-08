function solve()
    S = collect(readline())
    l = length(S)
    ans = 0
    for i=1:l, j=i:l
        if S[i:j] == S[j:-1:i]
            ans = max(ans, j-i+1)
        end
    end
    ans
end

println(solve())
