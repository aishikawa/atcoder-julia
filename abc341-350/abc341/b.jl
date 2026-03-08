function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    for i=1:N-1
        S, T = [parse(Int, x) for x in split(readline())]
        n = A[i] ÷ S
        A[i+1] += n*T
    end
    A[end]
end

println(solve())
