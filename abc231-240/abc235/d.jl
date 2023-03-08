function rotate(x::Int)::Int
    str = string(x)
    parse(Int, str[2:end] * str[1])
end

function solve()
    a, n = [parse(Int, x) for x in split(readline())]
    searched = Set{Int}(n)
    queue = Vector{Tuple{Int, Int}}([(0, n)])
    while length(queue) ≠ 0
        (d, x) = popfirst!(queue)
        if x == 1
            return d
        end
        if x > 10 && string(x)[2] ≠ '0'
            rx = rotate(x)
            if rx ∉ searched
                push!(searched, rx)
                push!(queue, (d+1, rx))
            end
        end
        if x % a == 0
            ax = x ÷ a
            if ax ∉ searched
                push!(searched, ax)
                push!(queue, (d+1, ax))
            end
        end
    end
    -1
end

println(solve())
