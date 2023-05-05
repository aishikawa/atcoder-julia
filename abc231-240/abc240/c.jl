function solve()
    n, x = [parse(Int, t) for t in split(readline())]
    possible = Set([0])
    for _ in 1:n
        a, b = [parse(Int, t) for t in split(readline())]
        next = Set{Int}()
        for p in possible
            if p+a ≤ x
                push!(next, p+a)
            end
            if p+b ≤ x
                push!(next, p+b)
            end
        end
        possible = next
    end
    x ∈ possible ? "Yes" : "No"
end

println(solve())
