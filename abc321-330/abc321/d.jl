function solve()
    M, N, P = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]

    sort!(A)
    sort!(B)
    cumsumB = cumsum(B)
    reverse!(B)

    ans=0
    j = 1
    for i = 1:M
        while j <= N && A[i] + B[j] ≥ P
            j += 1
        end
        ans += P * (j-1)
        if N-j+1 >= 1
            ans += cumsumB[N-j+1] + (N-j+1)*A[i]
        end
    end
    ans
end

println(solve())
