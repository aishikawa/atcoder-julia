function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    S = collect(readline())

    t = zeros(Int, N)
    cum = 0
    for i=2:N
        if S[i-1] == S[i]
            cum += 1
        end
        t[i] = cum
    end

    for i=1:Q
        l, r = [parse(Int, x) for x in split(readline())]
        println(t[r] - t[l])
    end
end

solve()
