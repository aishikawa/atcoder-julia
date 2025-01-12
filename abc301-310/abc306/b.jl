function solve()
    A = [parse(Int, x) for x in split(readline())]
    ans::UInt64 = 0
    b::UInt64 = 1
    for a in A
        ans += b * a
        b *= 2
    end
    ans
end

println(solve())
