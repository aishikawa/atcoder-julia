function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    
    sold = 0
    vol = zeros(Bool, n+2)

    for a in as
        if a ≥ length(vol) || vol[a]
            sold += 1
        else
            vol[a] = true
        end
    end

    l = 1
    r = n+1

    while true
        while vol[l]
            l += 1
        end
        while r > 0 && !vol[r]
            r -= 1
        end
        if sold ≥ 2
            sold -= 2
            vol[l] = true
        else
            if l ≥ r
                break
            end
            vol[r] = false
            sold += 1
        end
    end

    l - 1
end

println(solve())
