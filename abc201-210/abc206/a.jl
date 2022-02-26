function solve()
    n = parse(Int, readline())
    p = floor(Int, 1.08n)
    if p < 206
        "Yay!"
    elseif p == 206
        "so-so"
    else
        ":("
    end
end

println(solve())
