function solve()
    N = parse(Int, readline())
    P = [parse(Int, x) for x in split(readline())]
    t = zeros(Int, N)
    for i=1:N
        t[P[i]] = i
    end
    Q = parse(Int, readline())
    for _=1:Q
        A, B = [parse(Int, x) for x in split(readline())]
        if t[A] < t[B]
            println(A)
        else
            println(B)
        end
    end
end

solve()
