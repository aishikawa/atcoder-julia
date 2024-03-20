function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    gs = fill(' ', (h, w))
    for i=1:h
        gs[i, :] = collect(readline())
    end
    
    i, j = (1, 1)
    hist = fill(false, (h, w))
    loop = false
    while true
        if hist[i, j]
            loop = true
            break
        end
        hist[i, j] = true

        if gs[i, j] == 'U'
            if i > 1
                i -= 1
            else
                break
            end
        elseif gs[i, j] == 'D'
            if i < h
                i += 1
            else
                break
            end
        elseif gs[i, j] == 'L'
            if j > 1
                j -= 1
            else
                break
            end
        elseif gs[i, j] == 'R'
            if j < w
                j += 1
            else
                break
            end
        end
    end
    if loop
        println(-1)
    else
        println("$(i) $(j)")
    end
end

solve()
