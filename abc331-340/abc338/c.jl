function solve()
    N = parse(Int, readline())
    Q = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]

    ans = 0
    for x in 0:maximum(Q)
        y = 10^7
        for i in 1:N
            if Q[i] < A[i] * x
                y = -10^7
            elseif B[i] > 0
                y = min(y, (Q[i] - A[i]*x) ÷ B[i])
            end
        end
        ans = max(ans, x+y)
    end
    ans
end

println(solve())
