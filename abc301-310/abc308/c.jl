function solve()
    N = parse(Int, readline())
    R = zeros(Rational, N)
    for i=1:N
        a, b = [parse(Int, x) for x in split(readline())]
        R[i] = a // (a+b)
    end
    ans = sortperm(R, alg=MergeSort, rev=true)
    join(ans, " ")
end

println(solve())
