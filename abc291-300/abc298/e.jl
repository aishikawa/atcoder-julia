function solve()
    m = 998244353
    N, A, B, P, Q = [parse(Int, x) for x in split(readline())]
    invP = invmod(P, m)
    invQ = invmod(Q, m)

    memoA = Dict{Tuple{Int, Int}, Int}()
    memoB = Dict{Tuple{Int, Int}, Int}()

    numhit = 0

    function fA(a::Int, b::Int)::Int
        if a ≤ 0
            1
        elseif (a, b) ∈ keys(memoA)
            numhit += 1
            memoA[(a, b)]
        else
            ret = 0
            for x=1:P
                if x ≥ a
                    ret = mod(ret + invP, m)
                else
                    ret = mod(ret + mod(invP * fB(a-x, b), m), m)
                end
            end
            memoA[(a, b)] = ret
            ret
        end
    end

    function fB(a::Int, b::Int)::Int
        if b ≤ 0
            0
        elseif (a, b) ∈ keys(memoB)
            numhit += 1
            memoB[(a, b)]
        else
            ret = 0
            for x=1:Q
                if x < b
                    ret = mod(ret + mod(invQ * fA(a, b-x), m), m)
                end
            end
            memoB[(a, b)] = ret
            ret
        end
    end
    fA(N-A, N-B)
end

println(solve())
