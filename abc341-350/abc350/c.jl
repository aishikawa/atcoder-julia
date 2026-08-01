function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    pos = zeros(Int, N)
    for i=1:N
        pos[A[i]] = i
    end

    ans = Vector{String}()
    for i=1:N
        if pos[i] ≠ i
            push!(ans, "$i $(pos[i])")
            pos[A[i]] = pos[i]
            A[pos[i]] = A[i]

            pos[i] = i
            A[i] = i
        end
    end

    println(length(ans))
    println(join(ans, "\n"))
end

solve()
