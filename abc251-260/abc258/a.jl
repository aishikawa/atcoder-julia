using Printf

function solve()
    k = parse(Int, readline())
    m = 21 * 60 + k
    @printf("%02d:%02d", m÷60, m%60)
end

solve()
