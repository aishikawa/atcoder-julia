using DataStructures

function solve()
    S = readline()
    T = readline()
    scount = counter(S)
    tcount = counter(T)

    ans = true
    tlack = slack = 0
    for c in 'a':'z'
        if c ∈ "atcoder"
            if scount[c] > tcount[c]
                tlack += scount[c] - tcount[c]
            elseif tcount[c] > scount[c]
                slack += tcount[c] - scount[c]
            end
        else
            ans = ans && (scount[c] == tcount[c])
        end
    end

    ans && slack ≤ scount['@'] && tlack ≤ tcount['@'] ? "Yes" : "No"
end

println(solve())
