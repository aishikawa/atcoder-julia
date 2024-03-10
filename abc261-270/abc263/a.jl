function solve()
    cards = [parse(Int, x) for x in split(readline())]
    count = zeros(Int, 13)
    for c in cards
        count[c] += 1
    end
    two = three = 0
    for i in 1:13
        if count[i] == 2
            two += 1
        elseif count[i] == 3
            three += 1
        end
    end

    two == 1 && three == 1 ? "Yes" : "No"
end

println(solve())
