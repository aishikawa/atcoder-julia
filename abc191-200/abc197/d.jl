function solve()
    n = parse(Int, readline())
    x0, y0 = [parse(Int, x) for x in split(readline())]
    xh, yh = [parse(Int, x) for x in split(readline())]

    r = sqrt((x0-xh)^2 + (y0-yh)^2) / 2
    xc, yc = (x0 + xh) / 2, (y0 + yh) / 2
    θ = atan(y0-yh, x0-xh)

    xx, yy = r * cos(2π/n), r * sin(2π/n)
    x = xx * cos(θ) - yy * sin(θ)
    y = xx * sin(θ) + yy * cos(θ)

    x += xc
    y += yc

    println(x, " ", y)
end

solve()