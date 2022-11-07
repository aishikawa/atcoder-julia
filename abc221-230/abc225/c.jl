function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]
    mods = [b % 7 for b in bs]
    for j=2:m
        if bs[j] - bs[j-1] ≠ 1 || mods[j-1] == 0 || (mods[j-1] + 1) % 7 ≠ mods[j]
            return "No"
        end
    end
    for i=2:n
        next = [parse(Int, x) for x in split(readline())]
        if !all((next - bs) .== 7)
            return "No"
        end
        bs = next
    end
    "Yes"
end

println(solve())
