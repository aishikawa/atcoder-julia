function solve()
    N = parse(Int, readline())
    for _=1:N
        A, B = [parse(Int, x) for x in split(readline())]
        println(A+B)
    end
end

solve()
