function find_root!(p::Vector{Int}, v::Int)
    path = Vector{Int}()
    while p[v] ≠ v
        push!(path, v)
        v = p[v]
    end
    for pp in path
        p[pp] = v
    end
    v
end

function union!(p::Vector{Int}, x::Int, y::Int)
    p[y] = x
end

function solve()
    q = parse(Int, readline())
    n = 2^20

    parents = Vector{Int}(1:n)
    data = -ones(Int, n)
    for i=1:q
        t, x = [parse(Int, x) for x in split(readline())]
        if t == 1
            j = find_root!(parents, (x%n)+1)
            data[j] = x
            new_root = j+1
            if new_root > n
                new_root = 1
            end
            union!(parents, new_root, j)
        else
            println(data[x%n+1])
        end
    end
end

solve()
