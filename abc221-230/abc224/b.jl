function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    a = zeros(Int, (h, w))
    for i=1:h
        a[i, :] = [parse(Int, x) for x in split(readline())]
    end
    for i1=1:h, i2=i1+1:h, j1=1:w, j2=j1+1:w
        if a[i1, j1] + a[i2, j2] > a[i2, j1] + a[i1, j2]
            return "No"
        end
    end
    "Yes"
end

println(solve())
