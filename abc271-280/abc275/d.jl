memo = Dict{Int, Int}()

function f(x::Int)
    if x in keys(memo)
        memo[x]
    elseif x == 0
        1
    else
        x1 = x÷2
        y1 = f(x1)
        memo[x1] = y1

        x2 = x÷3
        y2 = f(x2)
        memo[x2] = y2

        y1 + y2
    end
end

function solve()
    n = parse(Int, readline())
    f(n)
end

println(solve())
