function solve()
    N = parse(Int, readline())
    Hs = [parse(Int, x) for x in split(readline())]
    argmax(Hs)
end

println(solve())
