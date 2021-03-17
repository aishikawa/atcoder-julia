function solve()
    n = parse(Int, readline())
    ps = []
    for _=1:n
        p = [parse(Int, x) for x in split(readline())]
        push!(ps, p)
    end
    for i=1:n-2, j=i+1:n-1, k=j+1:n
        l = (ps[k][2] - ps[i][2]) * (ps[j][1] - ps[i][1])
        r = (ps[k][1] - ps[i][1]) * (ps[j][2] - ps[i][2])
        if l == r
            return "Yes"
        end
    end
    "No"
end

println(solve())
