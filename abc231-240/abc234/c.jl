function solve()
    k = parse(Int, readline())
    s = string(k, base=2)
    replace(s, "1"=>2)
end

println(solve())
