function solve()
    h, w, x, y = [parse(Int, x) for x in split(readline())]
    ss = []
    for _ in 1:h
        push!(ss, readline())
    end

    ret = 1
    xx = x - 1
    while xx ≥ 1 && ss[xx][y] == '.'
        ret += 1
        xx -= 1
    end
    xx = x + 1
    while xx ≤ h && ss[xx][y] == '.'
        ret += 1
        xx += 1
    end
    yy = y - 1
    while yy ≥ 1 && ss[x][yy] == '.'
        ret += 1
        yy -= 1
    end
    yy = y + 1
    while yy ≤ w && ss[x][yy] == '.'
        ret += 1
        yy += 1
    end
    ret
end

println(solve())
