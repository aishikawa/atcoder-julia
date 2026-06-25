function solve()
    N = parse(Int, readline())
    String([i % 3 == 0 ? 'x' : 'o' for i=1:N])
end

println(solve())
