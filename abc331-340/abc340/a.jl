function solve()
    A, B, D = [parse(Int, x) for x in split(readline())]

    ans = []
    x = A
    while true
        push!(ans, x)
        if x == B
            break
        end
        x += D
    end
    join(ans, " ")
end

println(solve())
