function solve()
    s = Set{String}()
    for _=1:4
        push!(s, readline())
    end
    length(s) == 4 ? "Yes" : "No"
end

println(solve())
