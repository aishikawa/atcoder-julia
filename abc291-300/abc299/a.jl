function solve()
    N = parse(Int, readline())
    S = collect(readline())
    state = 0
    for c in S
        if c == '|'
            state += 1
        elseif c == '*'
            if state == 1
                return "in"
            else
                return "out"
            end
        end
    end
    "out"
end

println(solve())
