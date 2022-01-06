function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    ret = 0
    for i=1:n
        for j=1:k
            ret += 100i + j
        end
    end
    ret
end

println(solve())
