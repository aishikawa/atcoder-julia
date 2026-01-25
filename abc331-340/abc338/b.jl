using DataStructures

function solve()
    S = collect(readline())
    c = counter(S)
    ans = ' '
    m = 0
    for (k, v) in c
        if v > m || (v == m && k < ans)
            ans = k
            m = v
        end
    end
    ans
end

println(solve())
