function solve()
    n = parse(Int, readline())
    s = readline()
    s1 = split(s[1:n], "")
    s2 = split(s[n+1:2n], "")
    q = parse(Int, readline())
    for i in 1:q
        t, a, b = [parse(Int, x) for x in split(readline())]
        if t == 1
            if a ≤ n && b ≤ n
                s1[a], s1[b] = s1[b], s1[a]
            elseif a ≤ n && b > n
                s1[a], s2[b-n] = s2[b-n], s1[a]
            else
                s2[a-n], s2[b-n] = s2[b-n], s2[a-n]
            end
        else 
            s1, s2 = s2, s1
        end
    end
    reduce(*, s1) * reduce(*, s2)
end

println(solve())
