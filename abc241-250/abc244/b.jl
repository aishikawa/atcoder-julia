function solve()
    n = readline()
    t = readline()

    pos = [0, 0]
    dir = [1, 0]

    rot90 = [[0, -1] [1, 0]]

    for c in t
        if c == 'R'
            dir = rot90 * dir
        else
            pos += dir
        end
    end
    println("$(pos[1]) $(pos[2])")
end

solve()
