function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    ans = 0
    for _=1:H
        ans += count('#', readline())
    end
    ans
end

println(solve())
