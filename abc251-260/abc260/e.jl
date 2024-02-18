function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    p = [Set{Int}() for _ in 1:m]
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        push!(p[a], i)
        push!(p[b], i)
    end

    unsatisfied = Set{Int}(1:n)
    numsatisfied = zeros(Int, n)
    l = r = 1
    for k in p[1]
        delete!(unsatisfied, k)
        numsatisfied[k] += 1
    end

    ranges = Vector{Tuple{Int, Int}}()

    while true
        if isempty(unsatisfied)
            push!(ranges, (r-l+1, 1))
            push!(ranges, (m-l+2, -1))
            if l ≥ m
                break
            end
            for k in p[l]
                numsatisfied[k] -= 1
                if numsatisfied[k] == 0
                    push!(unsatisfied, k)
                end
            end
            l += 1
        else
            if r ≥ m
                break
            end
            r += 1
            for k in p[r]
                numsatisfied[k] += 1
                if numsatisfied[k] == 1
                    delete!(unsatisfied, k)
                end
            end
        end
    end
    ret = zeros(Int, m)
    sort!(ranges)
    c = 0
    ri = 1
    for i=1:m
        while ri ≤ length(ranges) && ranges[ri][1] ≤ i
            c += ranges[ri][2]
            ri += 1
        end
        ret[i] += c
    end
    join(ret, " ")
end

println(solve())
