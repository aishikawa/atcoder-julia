function merge(vecs::Vector{Vector{Int}})
    n = length(vecs)
    indexes = ones(Int, n)
    lens = [length(v) for v in vecs]
    ret = Vector{Int}()

    while length(ret) < 20
        max_index = 0
        x = -1
        for i=1:n
            if indexes[i] ≤ lens[i]
                if vecs[i][indexes[i]] > x
                    x = vecs[i][indexes[i]]
                    max_index = i
                end
            end
        end
        if x < 0
            break
        else
            push!(ret, x)
            indexes[max_index] += 1
        end
    end
    ret
end


function dfs(v::Int, searched::Set{Int}, adjacencylist::Vector{Vector{Int}}, xs::Vector{Int}, ans::Vector{Vector{Int}})
    push!(searched, v)
    children = Vector{Int}()
    for c in [c for c in adjacencylist[v] if c ∉ searched]
        push!(children, c)
        dfs(c, searched, adjacencylist, xs, ans)
    end

    vecs = Vector{Vector{Int}}()
    push!(vecs, [xs[v]])
    for c in children
        push!(vecs, ans[c])
    end

    ans[v] = merge(vecs)
end


function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    xs = [parse(Int, x) for x in split(readline())]
    adjacencylist = [Vector{Int}() for _ in 1:n]
    for _=1:n-1
        a, b = [parse(Int, x) for x in split(readline())]
        push!(adjacencylist[a], b)
        push!(adjacencylist[b], a)
    end

    ans = [Vector{Int}() for _ in 1:n]
    dfs(1, Set{Int}(), adjacencylist, xs, ans)

    for _ in 1:q
        v, k = [parse(Int, x) for x in split(readline())]
        println(ans[v][k])
    end
end

solve()
