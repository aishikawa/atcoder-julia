function solve()
    grid = zeros(Int, 100, 100)
    N = parse(Int, readline())
    for _=1:N
        A, B, C, D = [parse(Int, x) for x in split(readline())]
        grid[A+1:B, C+1:D] .= 1
    end
    sum(grid)
end

println(solve())
