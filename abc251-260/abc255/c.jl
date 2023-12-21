function solve()
    x, a, d, n = [parse(Int, x) for x in split(readline())]
    l = a + d * (n-1)
    if d ≥ 0 && x ≤ a
        a - x
    elseif d ≥ 0 && x ≥ l
        x - l
    elseif d ≤ 0 && x ≥ a
        x - a
    elseif d ≤ 0 && x ≤ l
        l - x
    else
        d = abs(d)
        am = mod(a, d)
        xm = mod(x, d)
        min(mod(am-xm, d), mod(xm-am, d))
    end
end

println(solve())
