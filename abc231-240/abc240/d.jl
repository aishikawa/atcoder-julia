function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    cylinder = Array{Tuple{Int, Int}}([])
    ret = Array{Int}([])
    num = 0
    for a in as
        if length(cylinder) == 0
            push!(cylinder, (a, 1))
            num += 1
        else
            x, n = pop!(cylinder)
            if x == a
                if n+1 == x
                    num -= n
                else
                    push!(cylinder, (x, n+1))
                    num += 1
                end
            else
                push!(cylinder, (x, n)) 
                push!(cylinder, (a, 1))
                num += 1
            end
        end
        push!(ret, num)
    end
    for r in ret
        println(r)
    end
end

solve()
