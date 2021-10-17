function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    s = []
    for i=1:h
        push!(s, readline())
    end
    ret = 0
    for i=1:h-1, j=1:w-1
        c = length([x for x in [s[i][j], s[i+1][j], s[i][j+1], s[i+1][j+1]] if x == '#'])
        if c == 1 || c == 3
            ret += 1
        end
    end
    ret
end

println(solve())
