function solve()
    n = parse(Int, readline())
    s = readline()

    ret = zeros(Int, n+1)
    l = 1
    r = n+1
    v = 0
    for i=1:n
        if s[i] == 'L'
            ret[r] = v
            r -= 1
        else
            ret[l] = v
            l += 1
        end
        v += 1
    end
    ret[l] = v
    join(ret, " ")
end


println(solve())
