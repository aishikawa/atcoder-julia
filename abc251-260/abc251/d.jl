function solve()
    w = parse(Int, readline())
    ret = []
    for i=0:2
        for j=1:99
            push!(ret, j*100^i)
        end
    end
    println(length(ret))
    println(join(ret, " "))
end

solve()
