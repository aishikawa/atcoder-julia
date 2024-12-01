using Combinatorics

function distance(s:: String, t:: String, M::Integer):: Int
    ret = 0
    for i=1:M
        if s[i] ≠ t[i]
            ret += 1
        end
    end
    ret
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = fill("", N)
    for i=1:N
        S[i] = readline()
    end

    p = permutations(S)
    for pp in p
        ok = true
        for i=1:N-1
            d = distance(pp[i], pp[i+1], M)
            if d ≠ 1
                ok = false
            end
        end
        if ok
            return "Yes"
        end
    end
    "No"
end

println(solve())
