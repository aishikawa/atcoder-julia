function solve()
    xs = readline()
    xs = [parse(Int, x) for x in xs]

    if xs[1] == xs[2] && xs[2] == xs[3] && xs[3] == xs[4]
        "Weak"
    elseif (xs[1] + 1) % 10 == xs[2] && (xs[2] +1) % 10 == xs[3] && (xs[3] + 1) % 10 == xs[4]
        "Weak"
    else
        "Strong"
    end
end

println(solve())
