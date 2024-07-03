function solve()
    K = parse(Int, readline())
    ret = ""
    for i=1:K
        ret *= 'A'+(i-1)
    end
    ret
end

println(solve())
