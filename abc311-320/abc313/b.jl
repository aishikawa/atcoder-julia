function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    candidates = Set{Int}(1:N)
    for _=1:M
        A, B = [parse(Int, x) for x in split(readline())]
        delete!(candidates, B)
    end
    length(candidates) == 1 ? pop!(candidates) : -1
end

println(solve())
