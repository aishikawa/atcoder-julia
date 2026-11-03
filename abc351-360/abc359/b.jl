function solve()
    N = parse(Int, readline())
    A = parse.(Int, split(readline()))

    ans=0
    for i=3:2N
        if A[i-2] == A[i]
            ans += 1
        end
    end
    ans
end

println(solve())
