function minimax(A, B, isMax)
    c = sum(B, dims=1)
    r = sum(B, dims=2)
    d1 = B[1, 1] + B[2, 2] + B[3, 3]
    d2 = B[1, 3] + B[2, 2] + B[3, 1]
    if any(c .== 3) || any(r .== 3) || d1 == 3 || d2 == 3
        return 1
    end
    if any(c .== -3) || any(r .== -3) || d1 == -3 || d2 == -3
        return -1
    end

    if all(B .!= 0)
        return sum(A .* B)
    end

    if isMax
        ret = -10^10
        for i=1:3, j=1:3
            if B[i, j] == 0
                nB = copy(B)
                nB[i, j] = 1
                ret = max(ret, minimax(A, nB, false))
            end
        end
        return ret
    else
        ret = 10^10
        for i=1:3, j=1:3
            if B[i, j] == 0
                nB = copy(B)
                nB[i, j] = -1
                ret = min(ret, minimax(A, nB, true))
            end
        end
        return ret
    end
end


function solve()
    A = zeros(Int, 3, 3)
    for i=1:3
        A[i, :] = [parse(Int, x) for x in split(readline())]
    end
    B = zeros(Int, 3, 3)
    minimax(A, B, true) > 0 ? "Takahashi" : "Aoki"
end

println(solve())
