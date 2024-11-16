function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    C = fill(' ', H, W)
    for i=1:H
        C[i, :] = collect(readline())
    end

    ans = zeros(Int, min(H, W))

    for i=2:H-1, j=2:W-1
        if C[i, j] == '#' && C[i+1, j+1] == '#' && C[i+1, j-1] == '#' && C[i-1, j+1] == '#' && C[i-1, j-1] == '#'
            d = 1
            while i+d+1 ≤ H && j+d+1 ≤ W && C[i+d+1, j+d+1] == '#'
                d += 1
            end
            ans[d] += 1
        end
    end

    join(ans, " ")
end

println(solve())
