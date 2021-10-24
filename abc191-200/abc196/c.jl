function solve()
    n = readline()
    ret = 0
    for i in 2:2:length(n)
        ret += if i < length(n)
            9 * 10^(i÷2-1)
        else
            h = i÷2
            f = parse(Int, n[1:h])
            s = parse(Int, n[h+1:end])
            x = s ≥ f ? f : f-1
            x - 10^(h-1) + 1
        end
    end
    ret
end

println(solve())
