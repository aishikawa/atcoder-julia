function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    s = readline()
    ss = 1
    for _=1:q
        t, x = [parse(Int, x) for x in split(readline())]
        if t == 1
            ss = mod(ss - x - 1, n) + 1
        elseif t == 2
            i = mod(ss + x - 2, n) + 1
            println(s[i])
        end
    end
end

solve()
