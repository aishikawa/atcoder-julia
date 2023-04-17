function solve()
    n = parse(Int, readline())
    for _=1:n
        a, s = [parse(Int, x) for x in split(readline())]
        println((a ≤ s) && (a & (s-a)) == a ? "Yes" : "No")
    end
end

solve()
