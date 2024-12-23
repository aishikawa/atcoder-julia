function solve()
    N = parse(Int, readline())
    names = Vector{String}(undef, N)
    ages = Vector{Int}(undef, N)
    for i=1:N
        S, A = split(readline())
        names[i] = S
        ages[i] = parse(Int, A)
    end
    s = argmin(ages)
    for i=s:N
        println(names[i])
    end
    for i=1:s-1
        println(names[i])
    end
end

solve()
