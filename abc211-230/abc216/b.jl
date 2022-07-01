function solve()
    n = parse(Int, readline())
    nameset = Set{String}()
    for _=1:n
        push!(nameset, readline())
    end
    length(nameset) == n ? "No" : "Yes"
end

println(solve())
