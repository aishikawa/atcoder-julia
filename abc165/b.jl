function solve()
    x = parse(Int, readline())
    sol = 0
    deposit = 100
    while deposit < x
        sol += 1
        deposit += deposit ÷ 100
    end
    sol
end

println(solve())
