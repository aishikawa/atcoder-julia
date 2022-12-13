using DataStructures

function cumsum(a::Array{Int, 2}, H::Int, W::Int)::Array{Int, 2}
    ret = zeros(Int, (H, W))
    for i=1:H, j=1:W
        if i == 1 && j == 1
            ret[i, j] = a[i, j]
        elseif i == 1
            ret[i, j] = ret[i, j-1] + a[i, j]
        elseif j == 1
            ret[i, j] = ret[i-1, j] + a[i, j]
        else
            ret[i, j] = a[i, j] + ret[i-1, j] + ret[i, j-1] - ret[i-1, j-1]
        end
    end
    ret
end

function areasum(cs::Array{Int, 2}, h::Int, w::Int, H::Int, W::Int)::Array{Int, 2}
    hh = H-h+1
    ww = W-w+1
    ret = zeros(Int, (hh, ww))
    for i=1:hh, j=1:ww
        if i == 1 && j == 1
            ret[i, j] = cs[i+h-1, j+w-1]
        elseif i == 1
            ret[i, j] = cs[i+h-1, j+w-1] - cs[i+h-1, j-1]
        elseif j == 1
            ret[i, j] = cs[i+h-1, j+w-1] - cs[i-1, j+w-1]
        else
            ret[i, j] = cs[i+h-1, j+w-1] - cs[i+h-1, j-1] - cs[i-1, j+w-1] + cs[i-1, j-1]
        end
    end
    ret
end

function slidemax(a::Vector{Int}, k::Int)::Vector{Int}
    n = length(a)
    ret = zeros(Int, n-k+1)
    dq = Deque{Int}()
    for i=1:n
        if length(dq) > 0 && first(dq) ≤ i - k
            popfirst!(dq)
        end
        while length(dq) > 0 && a[last(dq)] < a[i]
            pop!(dq)
        end
        push!(dq, i)
        if i ≥ k
            ret[i-k+1] = a[first(dq)]
        end 
    end
    ret
end

function solve()
    H, W, h1, w1, h2, w2 = [parse(Int, x) for x in split(readline())]
    h2 = min(h1, h2)
    w2 = min(w1, w2)
    as = zeros(Int, (H, W))
    for i=1:H
        as[i, :] = [parse(Int, x) for x in split(readline())]
    end

    cs = cumsum(as, H, W)
    taka = areasum(cs, h1, w1, H, W)
    th, tw = size(taka)
    aoki = areasum(cs, h2, w2, H, W)
    ah, aw = size(aoki)

    mm = zeros(Int, (ah, tw))
    for i=1:ah
        mm[i, :] = slidemax(aoki[i, :], w1-w2+1)
    end
    m = zeros(Int, (th, tw))
    for j=1:tw
        m[:, j] = slidemax(mm[:, j], h1-h2+1)
    end

    maximum(taka - m)
end

println(solve())
