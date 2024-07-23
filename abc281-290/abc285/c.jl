function solve()
    S = collect(readline())
    ans = 0
    for c in S
        ans = ans * 26 + (c - 'A') + 1
    end
    ans
end

println(solve())
