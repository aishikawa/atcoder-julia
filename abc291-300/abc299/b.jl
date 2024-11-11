function solve()
    N, T = [parse(Int, x) for x in split(readline())]
    C = [parse(Int, x) for x in split(readline())]
    R = [parse(Int, x) for x in split(readline())]

    if T ∉ C
        T = C[1]
    end

    ans=-1
    V=0
    for i=1:N
        if C[i] == T && R[i] > V
            ans = i
            V = R[i]
        end
    end
    ans
end

println(solve())
