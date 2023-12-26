function solve()
    h1, h2, h3, w1, w2, w3 = [parse(Int, x) for x in split(readline())]

    ret = 0

    for a11 = 1:28, a12=1:28, a21=1:28, a22=1:28
        a13 = h1 - (a11+a12)
        a23 = h2 - (a21+a22)
        a31 = w1 - (a11+a21)
        a32 = w2 - (a12+a22)

        if a13 > 0 && a23 > 0 && a31 > 0 && a32 > 0 && h3 - (a31+a32) == w3 - (a13+a23) && w3 - (a13+a23) > 0
            ret += 1
        end
    end
    ret
end

println(solve())
