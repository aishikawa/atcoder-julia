function solve()
    N = parse(Int, readline())
    ans = 0
    for _=1:N
        S = readline()
        if S == "Takahashi"
            ans += 1
        end
    end
    ans
end

println(solve())
