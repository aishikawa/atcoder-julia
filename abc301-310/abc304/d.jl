function solve()
    W, H = [parse(Int, x) for x in split(readline())]
    N = parse(Int, readline())
    berries = Array{Int}(undef, N, 2)
    for i=1:N
        berries[i, :] = [parse(Int, x) for x in split(readline())]
    end
    A = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    B = parse(Int, readline())
    bs = [parse(Int, x) for x in split(readline())]

    num = Dict{Tuple{Int, Int}, Int}()
    for i=1:N
        p, q = berries[i, :]
        x = searchsortedfirst(as, p)
        y = searchsortedfirst(bs, q)
        num[(x, y)] = get(num, (x, y), 0) + 1
    end

    vs = values(num)
    m = minimum(vs)
    M = maximum(vs)
    l = length(vs)
    if l < (A+1)*(B+1)
        m = 0
    end
    println("$m $M")
end

solve()
