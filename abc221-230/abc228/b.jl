function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    know = Set{Int}([x])
    while as[x] ∉ know
        push!(know, as[x])
        x = as[x]
    end
    length(know)
end

println(solve())
