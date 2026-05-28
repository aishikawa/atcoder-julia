function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    B = [A[i] * A[i+1] for i=1:N-1]
    join(B, " ")
end

println(solve())
