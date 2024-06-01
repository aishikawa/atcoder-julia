function solve()
    s = readline()
    i = findlast('a', s)
    isnothing(i) ? -1 : i
end

println(solve())
