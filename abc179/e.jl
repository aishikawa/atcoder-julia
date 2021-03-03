function solve()
    n, a, m = [parse(Int, x) for x in split(readline())]
    d = Dict{Int, Int}(a=>1)
    v = [a]
    i = 2
    while i ≤ n
        a = a^2 % m
        if a ∈ keys(d)
            break
        end
        d[a] = i
        push!(v, a)
        i += 1
    end
    if i > n
        sum(v)
    else
        cyclestart = d[a]
        cyclelen = i - cyclestart
        ret = sum(v[1:cyclestart-1])
        n = n - cyclestart
        ret += sum(v[cyclestart:end])* (n ÷ cyclelen)
        ret += sum(v[cyclestart:cyclestart+(n%cyclelen)])
    end
end

println(solve())
