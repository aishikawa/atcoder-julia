function solve()
    s, t = [parse(Int, x) for x in split(readline())]
    ret = 0
    for a=0:s,b=0:s-a,c=0:s-(a+b)
        if a*b*c ≤ t
            ret += 1
        end
    end
    ret
end

println(solve())
