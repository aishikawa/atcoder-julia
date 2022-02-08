function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    c = Set{Int}()
    for a in as
        if a ∈ c
            return "No"
        end
        push!(c, a)
    end
    "Yes"
end

println(solve())