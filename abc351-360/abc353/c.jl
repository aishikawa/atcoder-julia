function solve()
    N = parse(Int, readline())
    A = parse.(Int, split(readline()))

    sort!(A)
    over = 0
    for a in A
        i = searchsortedfirst(A, 10^8-a)
        over += N-i+1
        if a ≥ 10^8 ÷ 2
            over -= 1
        end
    end

    sum(A) * (N-1) - over÷2*10^8
end

println(solve())
