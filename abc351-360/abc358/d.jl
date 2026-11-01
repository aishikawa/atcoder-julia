function solve()
    N, M = parse.(Int, split(readline()))
    A = parse.(Int, split(readline()))
    B = parse.(Int, split(readline()))

    sort!(A)
    sort!(B)

    ans = 0
    i = 1
    for b in B
        while i ≤ N && A[i] < b
            i += 1
        end
        if i > N
            return -1
        end
        ans += A[i]
        i += 1
    end
    ans
end

println(solve())
