function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    balls = Array(1:n)
    indexes = Array(1:n)
    for _=1:q
        x = parse(Int, readline())
        i = indexes[x]
        j = i + 1
        if j > n 
            j = n-1
        end
        y = balls[j]

        balls[i], balls[j] = balls[j], balls[i]
        indexes[x] = j
        indexes[y] = i
    end

    join(balls, " ")
end

println(solve())
