function subsetsum(xs, v)
    dp = zeros(Bool, v)
    for x in xs
        next = zeros(Bool, v)
        for i in 1:v
            if (i - x ≥ 1 && dp[i-x]) || x == i || dp[i]
                next[i] = true
            end
        end
        dp = next
    end
    dp[v]
end

function solve()
    N, x, y = [parse(Int, c) for c in split(readline())]
    As = [parse(Int, c) for c in split(readline())]

    xx = abs(x - As[1])
    xas = As[3:2:end]
    xsum = sum(xas)
    xok = if isodd(xx + xsum)
        false
    else
        subsetsum(xas, (xx + xsum) ÷ 2)
    end
    
    yy = abs(y)
    yas = As[2:2:end]
    ysum = sum(yas)
    yok = if isodd(yy + ysum)
        false
    else
        subsetsum(yas, (yy + ysum) ÷ 2)
    end

    xok && yok ? "Yes" : "No"
end

println(solve())
