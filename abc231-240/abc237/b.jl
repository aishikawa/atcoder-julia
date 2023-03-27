function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    as = zeros(Int, h, w)
    for i=1:h
        as[i,:] = [parse(Int, x) for x in split(readline())]
    end

    as = transpose(as)

    for i=1:w
        println(join([string(x) for x in as[i, :]], " "))
    end
end

solve()
