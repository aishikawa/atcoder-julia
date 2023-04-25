function solve()
    x1, y1, x2, y2 = [parse(Int, x) for x in split(readline())]
    a = [
        (x1+1, y1+2), (x1+2, y1+1), (x1+2, y1-1), (x1+1, y1-2),
        (x1-1, y1+2), (x1-2, y1+1), (x1-2, y1-1), (x1-1, y1-2),
    ]
    b = [
        (x2+1, y2+2), (x2+2, y2+1), (x2+2, y2-1), (x2+1, y2-2),
        (x2-1, y2+2), (x2-2, y2+1), (x2-2, y2-1), (x2-1, y2-2),
    ]

    length(a ∩ b) > 0 ? "Yes" : "No"
end

println(solve())
