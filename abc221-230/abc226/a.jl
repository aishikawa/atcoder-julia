function solve()
    x = parse(Float64, readline())
    round(Int, x, RoundNearestTiesUp)
end

println(solve())
