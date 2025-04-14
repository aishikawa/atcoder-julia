function solve()
    N = parse(Int, readline())
    S = collect(readline())
    Q = parse(Int, readline())
    s = Set{Int}()
    lt = -1
    for _=1:Q
        t, x, c = split(readline())
        if t == "1"
            x = parse(Int, x)
            S[x] = c[1]
            push!(s, x)
        elseif t == "2"
            lt = 2
            empty!(s)
        else
            lt = 3
            empty!(s)
        end
    end

    for i=1:N
        if i ∉ s && lt == 2
            S[i] = lowercase(S[i])
        elseif i ∉ s && lt == 3
            S[i] = uppercase(S[i])
        end
    end

    String(S)
end

println(solve())
