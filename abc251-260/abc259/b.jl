function solve()
    a, b, d = [parse(Int, x) for x in split(readline())]
    r = deg2rad(d)
    m = [cos(r) -sin(r); sin(r) cos(r)]
    p = m*[a; b]
    "$(p[1]) $(p[2])"
end

println(solve())
