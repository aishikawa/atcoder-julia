function solve()
    n, w = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    c = Set{Int}()
    for a in as
        if a ≤ w
            push!(c, a)
        end
    end

    for i=1:n, j=i+1:n
        s = as[i] + as[j]
        if s ≤ w
            push!(c, s)
        end
    end

    for i=1:n, j=i+1:n, k=j+1:n
        s = as[i] + as[j] + as[k]
        if s ≤ w
            push!(c, s)
        end
    end

    length(c)
end

println(solve())
