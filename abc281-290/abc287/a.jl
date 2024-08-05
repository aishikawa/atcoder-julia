function solve()
    N = parse(Int, readline())
    f = 0
    a = 0
    for _=1:N
        S = readline()
        if S == "For"
            f += 1
        else
            a += 1
        end
    end

    f > a ? "Yes" : "No"
end

println(solve())
