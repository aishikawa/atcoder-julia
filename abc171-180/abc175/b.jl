function solve()
    n = parse(Int, readline())
    ls = [parse(Int, x) for x in split(readline())]
    sort!(ls)

    ret = 0
    for i=1:n-2, j=i+1:n-1, k=j+1:n
        if ls[i] + ls[j] > ls[k] && ls[i] ≠ ls[j] && ls[j] ≠ ls[k]
            ret += 1
        end
    end
    ret
end

println(solve())
