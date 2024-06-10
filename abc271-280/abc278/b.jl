using Printf

function is_confusing(h, m)
    hs = collect(@sprintf("%02d", h))
    ms = collect(@sprintf("%02d", m))
    hs[2], ms[1] = ms[1], hs[2]
    hs = parse(Int, join(hs))
    ms = parse(Int, join(ms))
    0 ≤ hs ≤ 23 && 0 ≤ ms ≤ 59
end

function solve()
    H, M = [parse(Int, x) for x in split(readline())]
    while true
        if is_confusing(H, M)
            println("$H $M")
            break
        end

        M += 1
        if M == 60
            H += 1
            M = 0
            if H == 24
                H = 0
            end
        end
    end
end

solve()
