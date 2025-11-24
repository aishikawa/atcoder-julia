function solve()
    N = parse(Int, readline())

    for x=0:N, y=0:N, z=0:N
        if x + y + z ≤ N
            println("$x $y $z")
        end
    end
end

solve()
