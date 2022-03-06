function solve()
    n = parse(Int, readline())
    segments = []
    for _=1:n
        s = [parse(Float64, x) for x in split(readline())]
        if s[1] == 2
            s[3] -= 0.5
        elseif s[1] == 3
            s[2] += 0.5
        elseif s[1] == 4
            s[2] += 0.5
            s[3] -= 0.5
        end
        push!(segments, s)
    end

    ret = 0
    for i=1:n, j=i+1:n
        ret += max(segments[i][2], segments[j][2]) ≤ min(segments[i][3], segments[j][3]) ? 1 : 0
    end
    ret
end

println(solve())
