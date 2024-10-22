function solve()
    S = collect(readline())
    b1 = b2 = r1 = r2 = k = -1
    for (i, p) in enumerate(S)
        if p == 'B'
            if b1 < 0
                b1 = i
            else
                b2 = i
            end
        elseif p == 'R'
            if r1 < 0
                r1 = i
            else
                r2 = i
            end
        elseif p == 'K'
            k = i
        end
    end

    isodd(b2 - b1) && r1 < k < r2 ? "Yes" : "No"
end

println(solve())
