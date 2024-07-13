function solve()
    T = parse(Int, readline())
    for _=1:T
        N = parse(Int, readline())
        A = [parse(Int, x) for x in split(readline())]
        println(length([a for a in A if isodd(a)]))
    end
end

solve()
