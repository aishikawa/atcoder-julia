function solve()
    N = parse(Int, readline())
    S = collect(readline())
    a = b = c = false

    for i=1:N
        if S[i] == 'A'
            a = true
        elseif S[i] == 'B'
            b = true
        elseif S[i] == 'C'
            c = true
        end

        if a && b && c
            return i
        end
    end
end

println(solve())
