function solve()
    H, W, N, h, w = [parse(Int, x) for x in split(readline())]
    as = zeros(Int, H, W)
    for i=1:H
        as[i, :] = [parse(Int, x) for x in split(readline())]
    end

    temp = Dict{Int, Vector{Int}}()
    for i=1:H, j=1:W
        a = as[i, j]
        if a ∉ keys(temp)
            temp[a] = [i, j, i, j]
        else
            temp[a][1] = min(temp[a][1], i)
            temp[a][2] = min(temp[a][2], j)
            temp[a][3] = max(temp[a][3], i)
            temp[a][4] = max(temp[a][4], j)
        end
    end

    ans = fill(length(temp), (H-h+1, (W-w+1)))
    for (t, l, b, r) in values(temp)
        tt = max(1, b - h + 1)
        ll = max(1, r - w + 1)
        bb = min(t, H-h+1)
        rr = min(l, W-w+1)

        ans[tt:bb, ll:rr] .-= 1
    end

    for i=1:H-h+1
        println(join(ans[i, :], " "))
    end
end

solve()
