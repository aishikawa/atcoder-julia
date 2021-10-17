function solve()
    s = readline()
    t = readline()

    tlen = length(t)
    slen = length(s)

    ret = tlen
    for j=1:(slen-tlen)+1
        r = 0
        for i=1:tlen
            if t[i] != s[j+i-1]
                r += 1
            end
        end
        ret = min(ret, r)
    end
    ret
end

println(solve())
