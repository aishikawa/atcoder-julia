function makeearlieststartday(N, K, C, S)
    ret = zeros(Int, K)
    d = 1
    k = 1
    while k <= K
        if S[d] == 'o'
            ret[k] = d
            d += C + 1
            k += 1
        elseif S[d] == 'x'
            d += 1
        end
    end
    ret
end

function makelateststartday(N, K, C, S)
    ret = zeros(Int, K)
    d = N
    k = K
    while k >= 1
        if S[d] == 'o'
            ret[k] = d
            d -= C + 1
            k -= 1
        else S[d] == 'x'
            d -= 1
        end
    end
    ret
end


function solve()
    N, K, C = [parse(Int, x) for x in split(readline())]
    S = readline()

    earlieststartday = makeearlieststartday(N, K, C, S)
    lateststartday = makelateststartday(N, K, C, S)
    for (e, l) in zip(earlieststartday, lateststartday)
        if e == l
            println(e)
        end
    end
end

solve()
