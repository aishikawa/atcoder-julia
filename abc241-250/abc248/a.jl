function solve()
    s = readline()
    a = ones(Bool, 10)
    for c in s
        i = parse(Int, c)
        a[i+1] = false
    end
    findfirst(a) - 1
end

println(solve())
