function solve()
    N = parse(Int, readline())
    A = zeros(Int, N)
    B = zeros(Int, N)
    for i=1:N
        A[i], B[i] = [parse(Int, x) for x in split(readline())]
    end
    sa = sum(A)
    ans = 0
    for i=1:N
        ans = max(ans, sa - A[i] + B[i])
    end
    ans
end

println(solve())
