function solve()
    a, b = split(readline())
    a = parse(Int64, a)
    b = parse(Int64, replace(b, "." => ""))

    a * b ÷ 100
end

println(solve())
