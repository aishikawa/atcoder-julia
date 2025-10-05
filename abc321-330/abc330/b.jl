function solve()
    N, L, R = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    ans = zeros(Int, N)

    for i=1:N
        if L ≤ A[i] ≤ R
            ans[i] = A[i]
        elseif A[i] < L
            ans[i] = L
        else
            ans[i] = R
        end
    end

    join(ans, " ")
end

println(solve())
