function solve()
    N, M = parse.(Int, split(readline()))
    A = parse.(Int, split(readline()))
    B = parse.(Int, split(readline()))
    C = sort(union(A, B))

    A = Set(A)
    isa = false
    for c in C
        if c ∈ A
            if isa
                return "Yes"
            end
            isa = true
        else
            isa = false
        end
    end
    "No"
end

println(solve())
