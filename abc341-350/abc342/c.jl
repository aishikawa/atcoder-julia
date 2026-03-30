function solve()
    N = parse(Int, readline())
    S = collect(readline())
    Q = parse(Int, readline())
    t = collect('a':'z')
    for _=1:Q
        c, d = split(readline())
        t = [e == c[1] ? d[1] : e for e in t]
    end
    String([t[s-'a'+1] for s in S ])
end

println(solve())
