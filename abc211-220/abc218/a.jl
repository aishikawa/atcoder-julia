function solve()
    n = parse(Int, readline())
    s = readline()
    s[n] == 'o' ? "Yes" : "No"
end

println(solve())
