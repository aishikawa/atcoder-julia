function solve()
    s = readline()
    ans = 0
    for c in s
        if c == 'v'
            ans += 1
        elseif c == 'w'
            ans += 2
        end
    end
    ans
end

println(solve())
