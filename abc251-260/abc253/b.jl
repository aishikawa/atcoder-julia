function solve()
    first = true
    h, w = [parse(Int, x) for x in split(readline())]
    i1 = j1 = i2 = j2 = 0
    for i=1:h
        s = readline()
        for j=1:w
            if s[j] == 'o'
                if first
                    i1, j1 = i, j
                    first = false
                else
                    i2, j2 = i, j
                end
            end
        end
    end
    abs(i1-i2) + abs(j1-j2)
end

println(solve())
