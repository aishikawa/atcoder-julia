function solve()
    h, w, k = [parse(Int, x) for x in split(readline())]
    x1, y1, x2, y2 = [parse(Int, x) for x in split(readline())]

    m = 998244353

    startpos = 0
    samerow = 1
    samecol = 1
    other = 0

    for i=2:k
        n_startpos = (samerow*(w-1) % m + samecol*(h-1) % m) % m
        n_samerow = (samerow*(w-2) % m + other*(h-1) % m + startpos % m) % m
        n_samecol = (samecol*(h-2) % m + other*(w-1) % m + startpos % m) % m
        n_other = (other*(h+w-4) % m + samerow + samecol) % m

        startpos, samerow, samecol, other = n_startpos, n_samerow, n_samecol, n_other
    end

    if x1==x2 && y1==y2
        startpos
    elseif x1==x2
        samerow
    elseif y1==y2
        samecol
    else
        other
    end
end

println(solve())
