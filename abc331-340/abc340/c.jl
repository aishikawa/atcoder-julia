using DataStructures

function solve()
    N = parse(Int, readline())
    ans = 0
    d = DefaultDict{Int, Int}(0)
    d[N] = 1
    while !isempty(d)
        k, v = first(d)
        delete!(d, k)
        ans += k * v
        h = k ÷ 2
        if k % 2 == 0
            if h > 1
                d[h] += 2v
            end
        else
            if h > 1
                d[h] += v
            end
            if h+1 > 1
                d[h+1] += v
            end
        end
    end
    ans
end

println(solve())
