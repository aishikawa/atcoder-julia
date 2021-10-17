function solve()
    n, s, d = [parse(Int, x) for x in split(readline())]
    for _=1:n
        x, y = [parse(Int, x) for x in split(readline())]
        if x < s && y > d
            return "Yes"
        end
    end
    "No"
end

println(solve())
