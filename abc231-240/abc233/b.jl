function solve()
    l, r = [parse(Int, x) for x in split(readline())]
    s = readline()

    s[1:l-1] * reverse(s[l:r]) * s[r+1:end]
end

println(solve())
