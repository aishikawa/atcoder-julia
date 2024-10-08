using DataStructures

function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    ans = 0
    c = counter(A)
    for v in values(c)
        ans += v ÷ 2
    end
    ans
end

println(solve())
