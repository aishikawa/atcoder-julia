function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    ps = Set([(i, j) for i=1:N-1 for j=i+1:N])
    for _=1:M
        a = [parse(Int, x) for x in split(readline())]
        for i=1:N-1
            if a[i] < a[i+1]
                delete!(ps, (a[i], a[i+1]))
            else
                delete!(ps, (a[i+1], a[i]))
            end
        end
    end
    length(ps)
end

println(solve())
