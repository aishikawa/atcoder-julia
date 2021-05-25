function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    a = zeros(Int, h, w)
    for i=1:h
        a[i, :] = [parse(Int, x) for x in split(readline())]
    end
    m = minimum(a)
    sum(a.-m)
end

println(solve())
