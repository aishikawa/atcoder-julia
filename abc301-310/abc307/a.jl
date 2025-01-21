function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    ans = [sum(A[7i+1:7i+7]) for i=0:N-1]
    join(ans, " ")
end

println(solve())
