function solve()
    as = [parse(Int, x) for x in split(readline())]
    ret = 0
    for _=1:3
        ret = as[ret+1]
    end
    ret
end

println(solve())
