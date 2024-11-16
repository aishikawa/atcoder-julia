function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    A = fill(' ', H, W)
    B = fill(' ', H, W)
    for i=1:H
        A[i, :] = collect(readline())
    end
    for i=1:H
        B[i, :] = collect(readline())
    end

    for s=1:H
        B = vcat(B[2:H, :], B[1:1, :])
        for t=1:W
            A = hcat(A[:, 2:W], A[:, 1:1])
            if A == B
                return "Yes"
            end
        end
    end
    "No"
end

println(solve())
