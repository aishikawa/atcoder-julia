function solve()
    r, c = [parse(Int, x) for x in split(readline())]
    for i=1:8
        if r == i || r == 16-i || c == i || c == 16-i
            return i % 2 == 1 ? "black" : "white"
        end
    end
end

println(solve())
