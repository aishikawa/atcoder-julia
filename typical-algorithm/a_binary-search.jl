function solve1(N::Int, K::Int, A::Vector{Int}):: Int
    if A[N] < K
        -1
    else
        l = 0
        r = N
        while l + 1 < r
            m = (l+r) ÷ 2
            if A[m] ≤ K
                l = m
            else
                r = m
            end
        end
        r - 1
    end
end

function solve2(N::Int, K::Int, A::Vector{Int}):: Int
    i = searchsortedfirst(A, K)
    if i > N
        -1
    else
        i-1
    end
end

function main()
    N, K = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    println(solve1(N, K, A))
    # println(solve2(N, K, A))
end

main()
