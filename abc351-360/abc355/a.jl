function solve()
    A, B = parse.(Int, split(readline()))
    if A == B
        -1
    else
        cand = Set{Int}([1, 2, 3])
        delete!(cand, A)
        delete!(cand, B)
        pop!(cand)
    end
end

println(solve())
