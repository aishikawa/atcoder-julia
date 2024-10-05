function solve()
    N = parse(Int, readline())
    W = split(readline())

    any([w in ["and", "not", "that", "the", "you"] for w in W]) ? "Yes" : "No"
end

println(solve())
