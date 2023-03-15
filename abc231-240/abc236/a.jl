function solve()
    s = readline()
    a, b = [parse(Int, x) for x in split(readline())]
    s[1:a-1] * s[b] * s[a+1:b-1] * s[a] * s[b+1:end]
end

println(solve())
