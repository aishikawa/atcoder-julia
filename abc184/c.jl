function solve()
    r1, c1 = [parse(Int, x) for x in split(readline())]
    r2, c2 = [parse(Int, x) for x in split(readline())]

    x = abs(r1-r2)
    y = abs(c1-c2)

    if (x,y)==(0,0)
        0
    elseif x==y || x+y≤3
        1
    elseif (x+y)%2==0 || x+y≤6 || abs(x-y)≤3
        2
    else
        3
    end
end

println(solve())
