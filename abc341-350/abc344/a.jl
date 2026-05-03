function solve()
    S = collect(readline())
    m = false
    for s ∈ S
        if !m && s ≠ '|'
            print(s)
        elseif s == '|'
            m = !m
        end
    end
end

solve()
