function solve()
    N, X = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    ans = "No"
    S = Set{Int}(A)
    for a in A
        if a - X ∈ S || a + X ∈ S
            ans = "Yes"
        end
    end
    ans
end

println(solve())
