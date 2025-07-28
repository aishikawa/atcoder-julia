using DataStructures

function solve()
    N = parse(Int, readline())
    slimes = DefaultDict{Int, Int}(0)
    for _=1:N
        s, c = [parse(Int, x) for x in split(readline())]
        while s & 1 == 0
            s >>= 1
            c <<= 1
        end
        slimes[s] += c
    end

    ans = 0
    for c ∈ values(slimes)
        t = string(c, base=2)
        ans += count(x -> x == '1', t)
    end

    ans
end

println(solve())
