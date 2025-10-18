function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    sorted = sort(A, rev=true)
    cum = cumsum(sorted)

    for i=1:N
        j = searchsortedfirst(sorted, A[i], rev=true)
        if j > 1
            println(cum[j-1])
        else
            println(0)
        end
    end
end

solve()
