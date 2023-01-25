function solve()
    n = parse(Int, readline())
    vote = Dict{String, Int}()
    ret = ""
    maxvote = 0
    for _=1:n
        name = readline()
        if name ∈ keys(vote)
            vote[name] += 1
        else
            vote[name] = 1
        end
        if maxvote < vote[name]
            maxvote = vote[name]
            ret = name
        end
    end
    ret
end

println(solve())
