function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = collect(readline())

    plain = 0
    logo = 0
    ans = 0

    for s in S
        if s == '0'
            plain = 0
            logo = 0
        elseif s == '1'
            if plain < M
                plain += 1
            else
                logo += 1
                ans = max(ans, logo)
            end
        else
            logo += 1
            ans = max(ans, logo)
        end
    end

    ans
end

println(solve())
