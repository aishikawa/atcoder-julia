using DataStructures

function solve()
    s = readline()
    l = length(s)
    if l ≤ 2
        n = parse(Int, s)
        r = parse(Int, reverse(s))
        n % 8 == 0 || r % 8 == 0
    else
        r = false
        c = counter(s)
        for i=112:8:992
            rr = true
            j = counter(string(i))
            for (d, v) in j
                if c[d] < v
                    rr = false
                end
            end
            if rr
                r = true
                break
            end
        end
        r
    end
end

println(solve() ? "Yes" : "No")
