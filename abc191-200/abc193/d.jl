using DataStructures

function countcard(str::String)::Accumulator{Int, Int}
    counter([parse(Int, x) for x in str])
end

function score(cards::Accumulator{Int, Int})::Int64
    ret = 0
    for i=1:9
        ret += i*10^cards[i]
    end
    ret
end

function solve()
    k = parse(Int, readline())
    s = readline()
    t = readline()

    s = countcard(s[1:end-1])
    t = countcard(t[1:end-1])

    total = 0
    win = 0
    for a=1:9, b=1:9
        n = if a == b
            (k - (s[a] + t[a])) * (k - (s[b] + t[b] + 1))
        else
            (k - (s[a] + t[a])) * (k - (s[b] + t[b]))
        end
        total += n

        s[a] += 1
        t[b] += 1
        if score(s) > score(t)
            win += n
        end
        s[a] -= 1
        t[b] -= 1
    end
    win / total
end

println(solve())
