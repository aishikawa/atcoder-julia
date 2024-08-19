function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    ans = Vector{Int}()

    s = 1
    prev = 0
    for a in as
        if a - prev ≠ 1
            ans = vcat(ans, prev+1:-1:s)
            ans = vcat(ans, prev+2:a-1)
            s = a
        end
        prev = a
    end

    ans = vcat(ans, prev+1:-1:s)
    ans = vcat(ans, prev+2:N)

    join(ans, " ")
end

println(solve())
