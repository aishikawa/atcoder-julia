function solve()
    N, A = parse.(Int, split(readline()))
    T = parse.(Int, split(readline()))
    t = 0
    for tt in T
        t = max(tt, t) + A
        println(t)
    end
end

solve()
