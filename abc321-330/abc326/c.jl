function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    sort!(A)
    ans = 0
    for i=1:N
        y = A[i] + M
        j = searchsortedfirst(A, y)
        ans = max(ans, j - i)
    end
    ans
end

println(solve())
