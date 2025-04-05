function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    m = sum(A) / N
    mf = floor(Int, m)
    mc = ceil(Int, m)

    sl = sum([mf - a for a in A if a < mf])
    sr = sum([a - mc for a in A if a > mc])

    max(sl, sr)
end

println(solve())
