function solve()
    a, b, c, d, e, f, x = [parse(Int, x) for x in split(readline())]
    takahashi = ( x ÷ (a + c) * a ) * b
    takahashi += min(x % (a + c), a) * b
    aoki = ( x ÷ (d + f) * d ) * e
    aoki += min(x % (d + f), d) * e

    if takahashi > aoki
        "Takahashi"
    elseif aoki > takahashi
        "Aoki"
    else
        "Draw"
    end
end

println(solve())
