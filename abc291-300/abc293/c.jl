function f(h::Int, w::Int):: Array{Array{Int}}
    if h == 0
        return [ones(Int, w)]
    end
    if w == 0
        return [zeros(Int, h)]
    end
    cat([push!(a, 0) for a in f(h-1, w)], [push!(a, 1) for a in f(h, w-1)], dims=1)
end

function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    A = zeros(Int, (H, W))
    for h=1:H
        A[h, :] = [parse(Int, x) for x in split(readline())]
    end

    ans = 0
    
    for p in f(H-1, W-1)
        c = [1, 1]
        vals = Set{Int}([A[c[1], c[2]]])
        for m in p
            if m == 0
                c += [1, 0]
            else
                c += [0, 1]
            end
            v = A[c[1], c[2]]
            push!(vals, v)
        end
        if length(vals) == H+W-1
            ans += 1
        end
    end
    ans
end

println(solve())
