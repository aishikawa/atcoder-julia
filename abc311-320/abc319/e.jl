function solve()
    N, X, Y = [parse(Int, x) for x in split(readline())]
    P = zeros(Int, N-1)
    T = zeros(Int, N-1)
    for i=1:N-1
        P[i], T[i] = [parse(Int, x) for x in split(readline())]
    end

    m = lcm(P)
    memo = Dict{Int, Int}()

    Q = parse(Int, readline())
    for i=1:Q
        p = parse(Int, readline())
        d, r = divrem(p, m)
        if r ∉ keys(memo)
            t = r + X
            for i=1:N-1
                rem = t % P[i]
                if rem ≠ 0
                    t += P[i] - rem
                end
                t += T[i]
            end
            t += Y
            memo[r] = t
        end
        println(memo[r] + d*m)
    end
end

solve()
