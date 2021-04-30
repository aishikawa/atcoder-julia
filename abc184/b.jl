function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    s = readline()

    for c in s
        if c == 'o'
            x += 1
        elseif c == 'x' && x > 0
            x -= 1
        end
    end
    x
end

println(solve())
