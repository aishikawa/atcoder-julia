function solve()
    S = collect(readline())
    N = parse(Int, readline())
    ans = 0

    p = 1
    for i=length(S):-1:1
        if S[i] == '1'
            ans += p
        end
        p *= 2
    end

    if ans > N
        -1
    else
        for s ∈ S
            p ÷= 2
            if s == '?' && ans + p ≤ N
                ans += p
            end
        end
        ans
    end
end

println(solve())
