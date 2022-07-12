function solve()
    ss = Set{String}(["ABC", "ARC", "AGC", "AHC"])
    for _=1:3
        delete!(ss, readline())
    end
    for s in ss
        println(s)
    end
end

solve()
