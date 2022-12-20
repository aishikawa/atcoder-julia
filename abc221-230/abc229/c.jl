function solve()
    n, w = [parse(Int, x) for x in split(readline())]
    cheese = Vector{Tuple{Int, Int}}()
    for _=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        push!(cheese, (a, b))
    end
    sort!(cheese, rev=true)

    ret = 0
    c = 0
    for i=1:n
        a, b = cheese[i]
        if c + b ≤ w
            ret += a*b
            c += b
        else
            ret += a * (w-c)
            break
        end
    end
    ret
end

println(solve())
