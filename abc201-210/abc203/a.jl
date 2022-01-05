function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]
    if a == b
        c
    elseif b == c
        a
    elseif c == a
        b
    else
        0
    end
end

println(solve())