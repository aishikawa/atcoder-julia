function search(depth::Int, prod::BigInt, n::Int, x::Int, as::Vector{Vector{Int}})::Int
    if depth == n
        sum(prod * as[n] .== x)
    else
        sum([search(depth+1, prod*a, n, x, as) for a in as[depth]])
    end
end


function solve()
    n, x = [parse(Int64, d) for d in split(readline())]
    ls = Vector{Int}()
    as = Vector{Vector{Int}}()
    for _=1:n
        line = [parse(Int64, d) for d in split(readline())]
        push!(ls, line[1])
        push!(as, line[2:end])
    end

    search(1, BigInt(1), n, x, as)
end

println(solve())
