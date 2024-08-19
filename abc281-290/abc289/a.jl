function solve()
    s = readline()
    ans = ""
    for c in s
        ans *= string(1 - parse(Int, c))
    end
    ans
end

println(solve())
