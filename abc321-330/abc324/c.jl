function check(S::Vector{Char}, T::Vector{Char})
    lenS = length(S)
    lenT = length(T)
    if lenS > lenT
        S, T = T, S
        lenS, lenT = lenT, lenS
    end
    if lenS == lenT
        e = 0
        for i=1:lenS
            if S[i] != T[i]
                e += 1
            end
        end
        e ≤ 1
    elseif lenS + 1 == lenT
        e = 0
        i = 1
        j = 1
        while i ≤ lenS && j ≤ lenT
            if S[i] != T[j]
                j += 1
                e += 1
            else
                i += 1
                j += 1
            end
        end
        e ≤ 1
    else
        false
    end
end

function solve()
    N, T = split(readline())
    N = parse(Int, N)
    T = collect(T)
    ans = Vector{Int}()
    for i=1:N
        S = collect(readline())
        if check(S, T)
            push!(ans, i)
        end
    end
    println(length(ans))
    println(join(ans, " "))
end

solve()
