using DataStructures

function solve()
    S = readline()
    a = Accumulator{String, Int}()

    c = zeros(Int, 10)
    a[join(c)] += 1
    for s in S
        d = parse(Int, s)
        c[d+1] = 1 - c[d+1]
        a[join(c)] += 1
    end

    ans = 0
    for v in values(a)
        ans += v * (v-1) ÷ 2
    end
    
    ans
end

println(solve())
