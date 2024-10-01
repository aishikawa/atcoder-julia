function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]

    ansA = zeros(Int, N)
    ansB = zeros(Int, M)
    a = b = 1
    for i=1:N+M
        if a > N
            ansB[b] = i
            b += 1
        elseif b > M
            ansA[a] = i
            a += 1
        else
            if A[a] < B[b]
                ansA[a] = i
                a += 1
            else
                ansB[b] = i
                b += 1
            end
        end
    end
    println(join(ansA, " "))
    println(join(ansB, " "))
end

solve()
