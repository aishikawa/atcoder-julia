function solve()
    n = parse(Int, readline())
    set = Set{String}()
    for _ in 1:n
        push!(set, readline())
    end
    length(set)
end

println(solve())
