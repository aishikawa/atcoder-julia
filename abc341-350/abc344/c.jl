function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    M = parse(Int, readline())
    B = [parse(Int, x) for x in split(readline())]
    L = parse(Int, readline())
    C = [parse(Int, x) for x in split(readline())]

    S = Set{Int}()
    for a in A, b in B, c in C
        push!(S, a + b + c)
    end

    Q = parse(Int, readline())
    X = [parse(Int, x) for x in split(readline())]

    for x in X
        if x ∈ S
            println("Yes")
        else
            println("No")
        end
    end
end

solve()
