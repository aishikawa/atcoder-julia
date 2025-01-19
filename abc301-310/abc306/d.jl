function solve()
    N = parse(Int, readline())
    X = zeros(Int, N)
    Y = zeros(Int, N)

    for i=1:N
        X[i], Y[i] = [parse(Int, x) for x in split(readline())]
    end

    health = 0
    upset = 0

    for i=1:N
        if X[i] == 0
            next_health = max(health, health+Y[i], upset+Y[i])
            next_upset = upset
        else
            next_health = health
            next_upset = max(upset, health+Y[i])
        end
        health, upset = next_health, next_upset
    end
    max(health, upset)
end

println(solve())
