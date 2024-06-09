function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    sort!(as)

    d = Vector{Int}([1])
    for i=2:n
        if as[i] - as[i-1] ≥ 2
            push!(d, i)
        end
    end
    push!(d, n+1)

    e = Vector{Int}()
    for i=1:length(d)-1
        push!(e, sum(as[d[i]:d[i+1]-1]))
    end
    if as[1] == 0 && as[end] == m-1
        push!(e, sum(as[d[1]:d[2]-1]) + sum(as[d[end-1]:d[end]-1]))
    end

    max(0, sum(as) - maximum(e))

end

println(solve())
