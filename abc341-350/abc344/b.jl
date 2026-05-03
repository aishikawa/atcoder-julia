function solve()
    s = Vector{Int}()
    while true
        a = parse(Int, readline())
        append!(s, a)
        if a == 0
            break
        end
    end
    reverse!(s)

    println(join(s, '\n'))
end

solve()
