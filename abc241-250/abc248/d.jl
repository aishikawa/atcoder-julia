function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    temp = [Vector{Int}() for _=1:n]
    for i=1:n
        a = as[i]
        push!(temp[a], i)
    end

    q = parse(Int, readline())
    for _=1:q
        l, r, x = [parse(Int, x) for x in split(readline())]
        li = searchsortedfirst(temp[x], l)
        ri = searchsortedlast(temp[x], r)

        println(ri-li+1)
    end
end

solve()
