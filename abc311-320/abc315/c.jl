function solve()
    N = parse(Int, readline())
    I = fill((0, 0), N)

    for i=1:N
        f, s = [parse(Int, x) for x in split(readline())]
        I[i] = (s, f)
    end
    sort!(I, rev=true)
    
    if I[1][2] == I[2][2]
        ans = I[1][1] + I[2][1] ÷ 2
        i = 3
        while i ≤ N && I[i][2] == I[1][2]
            i += 1
        end
        if i ≤ N
            ans = max(ans, I[1][1] + I[i][1])
        end
        ans
    else
        I[1][1] + I[2][1]
    end
end

println(solve())
