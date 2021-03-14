function solve()
    n = parse(Int, readline())
    ret = 0
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        ret += (b-a+1)*(a+b)÷2
    end
    ret
end

println(solve())
