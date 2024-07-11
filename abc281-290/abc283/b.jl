function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    Q = parse(Int, readline())
    for _=1:Q
        q = [parse(Int, x) for x in split(readline())]
        if q[1] == 1
            A[q[2]] = q[3]
        else
            println(A[q[2]])
        end
    end
end

solve()
