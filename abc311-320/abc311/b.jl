function solve()
    N, D = [parse(Int, x) for x in split(readline())]
    schedules = Matrix{Char}(undef, N, D)
    for i=1:N
        schedules[i, :] = collect(readline())
    end

    ans = 0
    seq = 0
    for i=1:D
        if  all([s == 'o' for s in schedules[:,i]])
            seq += 1
            ans = max(ans, seq)
        else
            seq = 0
        end
    end

    ans
end

println(solve())
