function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    follow = Dict{Int, Set{Int}}()
    for _=1:Q
        t, a, b = [parse(Int, x) for x in split(readline())]
        if t == 1
            if a ∉ keys(follow)
                follow[a] = Set{Int}()
            end
            push!(follow[a], b)
        elseif t == 2
            if a ∉ keys(follow)
                follow[a] = Set{Int}()
            end
            delete!(follow[a], b)
        else
            if a ∈ keys(follow) && b ∈ follow[a] && b ∈ keys(follow) && a ∈ follow[b]
                println("Yes")
            else
                println("No")
            end
        end
    end
end

solve()
