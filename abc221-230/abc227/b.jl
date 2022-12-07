function solve()
    n = parse(Int, readline())
    ss = [parse(Int, x) for x in split(readline())]
    candidates = Set{Int}()
    for a=1:333
        for b=a:333
            area = 4a*b+3a+3b
            if area > 1000
                break
            end
            push!(candidates, area)
        end
    end
    mapreduce((x)->x∉candidates, +, ss)
end

println(solve())
