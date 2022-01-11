function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    friends = []
    for _=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        push!(friends, (a, b))
    end
    sort!(friends)

    i = 1
    while i ≤ n && friends[i][1] ≤ k
        k += friends[i][2]
        i += 1
    end
    k
end

println(solve())