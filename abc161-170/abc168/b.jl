function solve()
    k = parse(Int, readline())
    s = readline()

    if length(s) ≤ k
        s
    else
        s[1:k] * "..."
    end
end

println(solve())
