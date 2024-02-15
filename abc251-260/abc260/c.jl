function solve()
    n, x, y = [parse(Int, x) for x in split(readline())]
    red = zeros(Int, n)
    red[n] = 1
    blue = zeros(Int, n)
    for i=n:-1:2
        red[i-1] += red[i]
        blue[i] += red[i] * x

        red[i-1] += blue[i]
        blue[i-1] += blue[i] * y
    end
    blue[1]
end

println(solve())
